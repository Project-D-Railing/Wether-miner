-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 04. Mrz 2018 um 17:29
-- Server-Version: 10.1.30-MariaDB
-- PHP-Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `d-railing`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `postleitregionen`
--

CREATE TABLE `postleitregionen` (
  `PLR` tinyint(4) NOT NULL,
  `refpunkt` int(11) NOT NULL,
  `Bereich` varchar(200) CHARACTER SET utf8 COLLATE utf8_german2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `postleitregionen`
--

INSERT INTO `postleitregionen` (`PLR`, `refpunkt`, `Bereich`) VALUES
(1, 1458, 'Dresden, Riesa, Meißen, Bischofswerda'),
(2, 2625, 'Görlitz, Bautzen, Hoyerswerda, Zittau'),
(3, 3042, 'Cottbus, Finsterwalde, Forst (Lausitz), Spremberg'),
(4, 4668, 'Leipzig, Altenburg, Eilenburg, Torgau, Grimma'),
(5, 1, '– (Reserve)'),
(6, 6188, 'Halle (Saale), Dessau-Roßlau, Quedlinburg, Zeitz'),
(7, 7318, 'Gera, Jena, Saalfeld/Saale, Greiz'),
(8, 8141, 'Plauen, Zwickau, Aue, Klingenthal'),
(9, 9224, 'Chemnitz, Annaberg-Buchholz, Zschopau, Freiberg'),
(10, 10119, 'Berlin Innenstadt'),
(11, 1, 'Bundesinstitutionen (seit dem Teil-Regierungsumzug 1998) in Berlin'),
(12, 12101, 'Südliches und südöstliches Berlin'),
(13, 13505, 'Nördliches Berlin'),
(14, 14467, 'Potsdam und südwestliches Berlin, Rathenow, Luckenwalde, Brandenburg an der Havel'),
(15, 15517, 'Frankfurt (Oder), Eisenhüttenstadt, Fürstenwalde/Spree, Königs Wusterhausen'),
(16, 16515, 'Oranienburg, Eberswalde, Pritzwalk, Schwedt/Oder'),
(17, 17034, 'Neubrandenburg, Greifswald, Neustrelitz, Usedom'),
(18, 18184, 'Rostock, Stralsund, Güstrow, Bergen auf Rügen'),
(19, 19057, 'Schwerin, Ludwigslust, Wittenberge, Parchim'),
(20, 20359, 'Hamburg Mitte'),
(21, 21217, 'Südliches und östliches Hamburg und Umland, Lüneburg, Buxtehude, Stade, Reinbek'),
(22, 22335, 'Hamburg Nord/West, Norderstedt, Ahrensburg, Wedel'),
(23, 23795, 'Lübeck, Bad Segeberg, Wismar, Mölln'),
(24, 24143, 'Kiel, Flensburg, Schleswig, Neumünster'),
(25, 25899, 'Westküste (Elmshorn, Itzehoe, Sylt)'),
(26, 26389, 'Oldenburg, Wilhelmshaven, Emden, Aurich'),
(27, 27570, 'Großraum Bremen Bremerhaven, Cuxhaven, Delmenhorst, Helgoland, Neuwerk'),
(28, 28359, 'Bremen, Ottersberg, Schwanewede, Syke, Stuhr, Weyhe'),
(29, 29225, 'Celle, Uelzen, Salzwedel, Soltau, Lüchow'),
(30, 30880, 'Hannover, Garbsen, Langenhagen, Laatzen'),
(31, 31787, 'Hannover Umland, Hameln, Hildesheim, Peine, Schaumburg'),
(32, 32051, 'Herford, Minden, Detmold, Löhne'),
(33, 33659, 'Bielefeld, Paderborn, Bad Driburg, Gütersloh'),
(34, 34134, 'Kassel, Hannoversch Münden, Korbach, Warburg'),
(35, 35428, 'Gießen, Wetzlar, Marburg, Dillenburg, Frankenberg'),
(36, 35428, 'Fulda, Bad Hersfeld, Bad Salzungen, Alsfeld'),
(37, 37081, 'Göttingen, Höxter, Eschwege, Osterode am Harz'),
(38, 38120, 'Braunschweig, Salzgitter, Wolfsburg, Halberstadt'),
(39, 39171, 'Magdeburg, Stendal, Oschersleben, Staßfurt'),
(40, 40221, 'Düsseldorf, Hilden, Mettmann, Ratingen'),
(41, 41239, 'Mönchengladbach, Neuss, Viersen, Erkelenz'),
(42, 42103, 'Wuppertal, Velbert, Solingen, Remscheid'),
(43, 1, '– (Reserve)'),
(44, 44135, 'Dortmund, Lünen, Herne, Bochum'),
(45, 45127, 'Essen, Mülheim an der Ruhr, Recklinghausen, Gelsenkirchen'),
(46, 46240, 'Oberhausen, Bottrop, Bocholt, Wesel'),
(47, 47809, 'Duisburg, Krefeld, Moers, Kleve, Wesel'),
(48, 48268, 'Münster, Rheine, Nordhorn, Coesfeld'),
(49, 49809, 'Osnabrück, Melle, Ibbenbüren, Lingen (Ems)'),
(50, 50226, 'Köln (linksrheinisch plus Deutz), Frechen, Brühl, Bergheim'),
(51, 51645, 'Köln (rechtsrheinisch ohne Deutz), Leverkusen, Bergisch Gladbach, Gummersbach'),
(52, 52070, 'Aachen, Eschweiler, Düren, Heinsberg'),
(53, 53424, 'Bonn, Remagen, Siegburg, Euskirchen'),
(54, 54516, 'Trier, Wittlich, Daun, Prüm, Bitburg'),
(55, 55545, 'Mainz, Simmern/Hunsrück, Bad Kreuznach, Idar-Oberstein'),
(56, 56070, 'Koblenz, Neuwied, Mayen, Andernach'),
(57, 57462, 'Siegen, Lennestadt, Olpe, Altenkirchen (Westerwald)'),
(58, 58119, 'Hagen, Witten, Iserlohn, Lüdenscheid'),
(59, 59457, 'Hamm, Unna, Soest, Arnsberg'),
(60, 60327, 'Frankfurt am Main Mitte'),
(61, 61350, 'Bad Homburg, Friedberg, Bad Vilbel, Oberursel'),
(62, 1, '– (Reserve, wird im internen Gebrauch zur Bezeichnung des Internationalen Postzentrums (IPZ) in Frankfurt am Main benutzt, in welchem Post aus und für das Ausland bearbeitet wird.)'),
(63, 63065, 'Aschaffenburg, Hanau, Offenbach am Main, Miltenberg'),
(64, 64283, 'Darmstadt, Bensheim, Heppenheim, Groß-Gerau'),
(65, 65207, 'Wiesbaden, Limburg an der Lahn, Rüsselsheim am Main, Frankfurt am Main-West'),
(66, 66133, 'Saarbrücken, Neunkirchen, Homburg, Pirmasens, Zweibrücken'),
(67, 67663, 'Kaiserslautern, Ludwigshafen am Rhein, Worms, Speyer'),
(68, 68165, 'Mannheim, Schwetzingen, Lampertheim, Viernheim'),
(69, 69124, 'Heidelberg, Weinheim, Leimen, Mannheim (nur Postfächer)'),
(70, 70173, 'Stuttgart, Fellbach, Leinfelden-Echterdingen, Filderstadt'),
(71, 71334, 'Stuttgarter Umland, Böblingen, Waiblingen, Backnang, Ludwigsburg'),
(72, 72760, 'Tübingen, Reutlingen, Sigmaringen, Freudenstadt, Balingen, Nürtingen'),
(73, 73079, 'Göppingen, Esslingen am Neckar, Schwäbisch Gmünd, Aalen'),
(74, 74081, 'Heilbronn, Bietigheim-Bissingen, Schwäbisch Hall, Crailsheim'),
(75, 75056, 'Pforzheim, Eppingen, Calw, Mühlacker'),
(76, 76133, 'Karlsruhe, Baden-Baden, Landau in der Pfalz, Bruchsal'),
(77, 77654, 'Offenburg, Lahr, Kehl, Achern, Bühl'),
(78, 78050, 'Villingen-Schwenningen, Donaueschingen, Singen (Hohentwiel), Konstanz, Tuttlingen, Rottweil'),
(79, 79100, 'Freiburg im Breisgau, Lörrach, Titisee-Neustadt, Waldshut-Tiengen, Emmendingen'),
(80, 80999, 'München Mitte-Nordwest'),
(81, 81735, 'München West, Süd, Ost'),
(82, 82256, 'Münchener Umland (Süd, West), Fürstenfeldbruck, Starnberg, Garmisch-Partenkirchen'),
(83, 83059, 'Rosenheim, Traunstein, Freilassing, Bad Tölz'),
(84, 84030, 'Landshut, Waldkraiburg, Dingolfing, Pfarrkirchen, Mühldorf am Inn'),
(85, 85051, 'Münchener Umland (Nord, Ost), Ingolstadt, Dachau, Freising, Eichstätt'),
(86, 86368, 'Augsburg, Donauwörth, Landsberg am Lech, Neuburg a.Donau'),
(87, 87437, 'Kempten, Kaufbeuren, Memmingen, Marktoberdorf'),
(88, 88250, 'Friedrichshafen, Lindau (Bodensee), Ravensburg, Biberach an der Riß'),
(89, 89233, 'Ulm, Neu-Ulm, Heidenheim an der Brenz, Ehingen (Donau)'),
(90, 90402, 'Nürnberg, Fürth, Zirndorf'),
(91, 90478, 'Nürnberger Umland, Erlangen, Schwabach, Ansbach, Dinkelsbühl'),
(92, 92263, 'Amberg, Neumarkt in der Oberpfalz, Weiden in der Oberpfalz, Schwandorf'),
(93, 93055, 'Regensburg, Cham, Kelheim, Abensberg'),
(94, 94315, 'Passau, Landau an der Isar, Regen, Straubing'),
(95, 95445, 'Hof, Bayreuth, Kulmbach, Marktredwitz'),
(96, 96049, 'Bamberg, Lichtenfels, Coburg, Sonneberg'),
(97, 97422, 'Würzburg, Schweinfurt, Bad Kissingen, Wertheim'),
(98, 98530, 'Suhl, Hildburghausen, Ilmenau, Meiningen'),
(99, 99099, 'Erfurt, Weimar, Mühlhausen/Thüringen, Eisenach');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `weather`
--

CREATE TABLE `weather` (
  `ID` int(11) NOT NULL,
  `Time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `PLR` int(11) NOT NULL,
  `Temp` float NOT NULL,
  `Humidity` int(11) NOT NULL,
  `Wind_Speed` int(11) NOT NULL,
  `Wind_degr` smallint(6) DEFAULT NULL,
  `precipitation` int(11) DEFAULT NULL,
  `snow` int(11) DEFAULT NULL,
  `air_pressure` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `postleitregionen`
--
ALTER TABLE `postleitregionen`
  ADD PRIMARY KEY (`PLR`);

--
-- Indizes für die Tabelle `weather`
--
ALTER TABLE `weather`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `weather`
--
ALTER TABLE `weather`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=451;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
