import json

import mysql.connector
import requests

config_file = open("app_config.json", "r", encoding='utf-8-sig', newline='\r\n')
configuration = json.loads(config_file.read())
config_file.close()
api_token = configuration["key"]
config = configuration["configuration"]
api_url_base = 'http://api.openweathermap.org/data/2.5/'

cnx = mysql.connector.connect(**config)
cny = mysql.connector.connect(**config)
curA = cnx.cursor()
curB = cny.cursor(buffered=True)
curA.execute("SELECT * FROM `postleitregionen`")
insert_new_entry = (
    "INSERT INTO `weather` ( `PLR`, `Temp`, `Humidity`, `Wind_Speed`, `Wind_degr`, `precipitation`, `snow`, `air_pressure`) VALUES (%s, %s, %s, %s, %s, %s, %s, %s)")
for row in curA:
    plz = row[1]
    if plz == 1:
        continue
    print(plz)
    api_url = '{0}weather?zip={1},de&APPID={2}'.format(api_url_base, str(plz).zfill(5), api_token)
    r = requests.get(api_url)
    r.raise_for_status()
    response = r.json()
    weather = response['main']
    wind = response['wind']
    precipitation = None
    snow = None
    deg = None
    if "deg" in wind:
        deg = wind['deg']
    if "precipitation" in weather:
        precipitation = response['rain']['3h']
    if "snow" in wind:
        snow = response['snow']['3h']
    plr = str(plz).zfill(5)[0:2]
    temp = "{0:.2f}".format(weather['temp'] - 273.15)
    curB.execute(insert_new_entry,
                 (plr, temp, weather['humidity'], wind['speed'], deg, precipitation, snow, weather['pressure']))
curA.close()
curB.close()
cnx.commit()
cny.commit()
cnx.close()
cny.close()
