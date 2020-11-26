DELETE FROM season;
DELETE FROM matches;
DELETE FROM club;
DELETE FROM clubStats;
DELETE FROM stats;
DELETE FROM playerStats;
DELETE FROM nation;

/*importing matches for 2010/2011 season*/
.mode "csv"
.separator ","
.import '| tail -n +90 data/11champs.csv' matches

/*importing matches for 2011/2012 season*/
.mode "csv"
.separator ","
.import '| tail -n +90 data/12champs.csv' matches

/*importing matches for 2012/2013 season*/
.mode "csv"
.separator ","
.import '| tail -n +90 data/13champs.csv' matches

/*importing matches for 2013/2014 season*/
.mode "csv"
.separator ","
.import '| tail -n +90 data/14champs.csv' matches

/*importing matches for 2014/2015 season*/
.mode "csv"
.separator ","
.import '| tail -n +92 data/15champs.csv' matches

/*importing matches for 2015/2016 season*/
.mode "csv"
.separator ","
.import '| tail -n +94 data/16champs.csv' matches

/*Data for seasons*/
INSERT INTO seasons VALUES(11, '2010/2011 Season');
INSERT INTO seasons VALUES(12, '2011/2012 Season');
INSERT INTO seasons VALUES(13, '2012/2013 Season');
INSERT INTO seasons VALUES(14, '2013/2014 Season');
INSERT INTO seasons VALUES(15, '2014/2015 Season');
INSERT INTO seasons VALUES(16, '2015/2016 Season');

/*Data for stats*/
INSERT INTO stats VALUES(1, 'Player Stats 2010/2011', 11);
INSERT INTO stats VALUES(2, 'Club Stats 2010/2011', 11);
INSERT INTO stats VALUES(3, 'Player Stats 2011/2012', 12);
INSERT INTO stats VALUES(4, 'Club Stats 2011/2012', 12);
INSERT INTO stats VALUES(5, 'Player Stats 2012/2013', 13);
INSERT INTO stats VALUES(6, 'Club Stats 2012/2013', 13);
INSERT INTO stats VALUES(7, 'Player Stats 2013/2014', 14);
INSERT INTO stats VALUES(8, 'Club Stats 2013/2014', 14);
INSERT INTO stats VALUES(9, 'Player Stats 2014/2015', 15);
INSERT INTO stats VALUES(10, 'Club Stats 2014/2015', 15);
INSERT INTO stats VALUES(11, 'Player Stats 2015/2016', 16);
INSERT INTO stats VALUES(12, 'Club Stats 2015/2016', 16);

/*Data for nation*/
INSERT INTO nation VALUES(1, 'AUSTRIA');
INSERT INTO nation VALUES(2, 'BELARUS');
INSERT INTO nation VALUES(3, 'BELGIUM');
INSERT INTO nation VALUES(4, 'BULGARIA');
INSERT INTO nation VALUES(5, 'CROATIA');
INSERT INTO nation VALUES(6, 'CYPRUS');
INSERT INTO nation VALUES(7, 'CZECH REPUBLIC');
INSERT INTO nation VALUES(8, 'DENMARK');
INSERT INTO nation VALUES(9, 'ENGLAND');
INSERT INTO nation VALUES(10, 'FRANCE');
INSERT INTO nation VALUES(11, 'GERMANY');
INSERT INTO nation VALUES(12, 'GREECE');
INSERT INTO nation VALUES(13, 'ISRAEL');
INSERT INTO nation VALUES(14, 'ITALY');
INSERT INTO nation VALUES(15, 'KAZAKHSTAN');
INSERT INTO nation VALUES(16, 'NETHERLANDS');
INSERT INTO nation VALUES(17, 'PORTUGAL');
INSERT INTO nation VALUES(18, 'ROMANIA');
INSERT INTO nation VALUES(19, 'RUSSIA');
INSERT INTO nation VALUES(20, 'SCOTLAND');
INSERT INTO nation VALUES(21, 'SERBIA');
INSERT INTO nation VALUES(22, 'SLOVAKIA');
INSERT INTO nation VALUES(23, 'SLOVENIA');
INSERT INTO nation VALUES(24, 'SPAIN');
INSERT INTO nation VALUES(25, 'SWEDEN');
INSERT INTO nation VALUES(26, 'SWITZERLAND');
INSERT INTO nation VALUES(27, 'TURKEY');
INSERT INTO nation VALUES(28, 'UKRAINE');

/*Data for club*/
INSERT INTO club VALUES(1, 'AC MILAN', 14);
INSERT INTO club VALUES(2, 'AJAX', 16);
INSERT INTO club VALUES(3, 'APOEL', 6);
INSERT INTO club VALUES(4, 'ANDERLECHT', 3);
INSERT INTO club VALUES(5, 'ARSENAL', 9);
INSERT INTO club VALUES(6, 'ASTANA', 15);
INSERT INTO club VALUES(7, 'ATHLETIC BILBAO', 24);
INSERT INTO club VALUES(8, 'ATLETICO MADRID', 24);
INSERT INTO club VALUES(9, 'AUSTRIA WIEN', 1);
INSERT INTO club VALUES(10, 'AUXERRE', 10);
INSERT INTO club VALUES(11, 'BARCELONA', 24);
INSERT INTO club VALUES(12, 'BASEL', 26);
INSERT INTO club VALUES(13, 'BATE BORISOV', 2);
INSERT INTO club VALUES(14, 'BAYERN MUNICH', 11);
INSERT INTO club VALUES(15, 'BAYER LEVERKUSEN', 11);
INSERT INTO club VALUES(16, 'BENFICA', 17);
INSERT INTO club VALUES(17, 'BORUSSIA DORTMUND', 11);
INSERT INTO club VALUES(18, 'BORUSSIA MONCHENGLADBACH', 1);
INSERT INTO club VALUES(19, 'BRAGA', 17);
INSERT INTO club VALUES(20, 'BURSASPOR', 27);
INSERT INTO club VALUES(21, 'CELTIC', 20);
INSERT INTO club VALUES(22, 'CFR CLUJ', 18);
INSERT INTO club VALUES(23, 'CHELSEA', 9);
INSERT INTO club VALUES(24, 'COPENHAGEN', 8);
INSERT INTO club VALUES(25, 'CSKA MOSCOW', 19);
INSERT INTO club VALUES(26, 'DINAMO ZAGREB', 5);
INSERT INTO club VALUES(27, 'DYNAMO KYIV', 28);
INSERT INTO club VALUES(28, 'GALATASARAY', 27);
INSERT INTO club VALUES(29, 'GENK', 3);
INSERT INTO club VALUES(30, 'GENT', 3);
INSERT INTO club VALUES(31, 'HAPOEL TEL AVIV', 13);
INSERT INTO club VALUES(32, 'JUVENTUS', 14);
INSERT INTO club VALUES(33, 'LILLE', 10);
INSERT INTO club VALUES(34, 'LIVERPOOL', 9);
INSERT INTO club VALUES(35, 'LUDOGORETS RAZGRAD', 4);
INSERT INTO club VALUES(36, 'LYON', 10);
INSERT INTO club VALUES(37, 'INTER MILAN', 14);
INSERT INTO club VALUES(38, 'MACCABI TEL AVIV', 13);
INSERT INTO club VALUES(39, 'MALAGA', 24);
INSERT INTO club VALUES(40, 'MALMO FF', 25);
INSERT INTO club VALUES(41, 'MANCHESTER CITY', 9);
INSERT INTO club VALUES(42, 'MANCHESTER UNITED', 9);
INSERT INTO club VALUES(43, 'MARIBOR', 23);
INSERT INTO club VALUES(44, 'MARSEILLE', 10);
INSERT INTO club VALUES(45, 'MONACO', 10);
INSERT INTO club VALUES(46, 'MONTPELLIER', 10);
INSERT INTO club VALUES(47, 'NAPOLI', 14);
INSERT INTO club VALUES(48, 'NORDSJAELLAND', 8);
INSERT INTO club VALUES(49, 'OLYMPIACOS', 12);
INSERT INTO club VALUES(50, 'OTELUL GALATI', 18);
INSERT INTO club VALUES(51, 'PANATHINAIKOS', 12);
INSERT INTO club VALUES(52, 'PARITZAN', 21);
INSERT INTO club VALUES(53, 'PORTO', 17);
INSERT INTO club VALUES(54, 'PSG', 10);
INSERT INTO club VALUES(55, 'PSV', 16);
INSERT INTO club VALUES(56, 'RANGERS', 20);
INSERT INTO club VALUES(57, 'REAL MADRID', 24);
INSERT INTO club VALUES(58, 'REAL SOLCIEDAD', 24);
INSERT INTO club VALUES(59, 'ROMA', 14);
INSERT INTO club VALUES(60, 'RUBIN KAZAN', 19);
INSERT INTO club VALUES(61, 'SCHALKE 04', 11);
INSERT INTO club VALUES(62, 'SEVILLA', 24);
INSERT INTO club VALUES(63, 'SHAKHTAR DONETSK', 28);
INSERT INTO club VALUES(64, 'SPARTAK MOSCOW', 19);
INSERT INTO club VALUES(65, 'SPORTING CP', 17);
INSERT INTO club VALUES(66, 'STEAUA BUCURESTI', 18);
INSERT INTO club VALUES(67, 'TOTTENHAM', 9);
INSERT INTO club VALUES(68, 'TRABZONSPOR', 27);
INSERT INTO club VALUES(69, 'TWENTE', 16);
INSERT INTO club VALUES(70, 'VALENCIA', 24);
INSERT INTO club VALUES(71, 'VIKTORIA PLZEN', 7);
INSERT INTO club VALUES(72, 'VILLARREAL', 24);
INSERT INTO club VALUES(73, 'WERDER BREMEN', 11);
INSERT INTO club VALUES(74, 'WOLFSBURG', 11);
INSERT INTO club VALUES(75, 'ZENIT', 19);
INSERT INTO club VALUES(76, 'ZILINA', 22);


/*Data for club stats*/
/*INSERT INTO clubStats VALUES(clubkey,cs name, gamesplayed, won, tied, lost, goalf for, against, statkey, seeasonkey);*/
INSERT INTO club VALUES(1, 'AC MILAN 10/11', 8, 2, 3, 3, 7, 8, 2);
INSERT INTO club VALUES(1, 'AC MILAN 11/12', 10, 3, 4, 3, 16, 14, 4);
INSERT INTO club VALUES(2, 'AJAX 10/11', 6, 2, 1, 3, 6, 10, 2);
INSERT INTO club VALUES(2, 'AJAX 11/12', 6, 2, 2, 2, 6, 6, 4);
INSERT INTO club VALUES(3, 'APOEL 11/12', 10, 3, 3, 4, 13, 18, 4);
INSERT INTO club VALUES(4, 'ANDERLECHT', );
INSERT INTO club VALUES(5, 'ARSENAL 10/11', 8, 5, 0, 3, 21, 11, 2);
INSERT INTO club VALUES(5, 'ARSENAL 11/12', 8, 4, 2, 2, 10, 10, 4);
INSERT INTO club VALUES(6, 'ASTANA', );
INSERT INTO club VALUES(7, 'ATHLETIC BILBAO', );
INSERT INTO club VALUES(8, 'ATLETICO MADRID', );
INSERT INTO club VALUES(9, 'AUSTRIA WIEN', );
INSERT INTO club VALUES(10, 'AUXERRE 10/11', 6, 1, 0, 5, 3, 12, 2);
INSERT INTO club VALUES(11, 'BARCELONA 10/11', 13, 9, 3, 1, 30, 9, 2);
INSERT INTO club VALUES(11, 'BARCELONA 11/12', 12, 8, 3, 1, 35, 10, 4);
INSERT INTO club VALUES(12, 'BASEL 10/11', 6, 2, 0, 4, 8, 11, 2);
INSERT INTO club VALUES(12, 'BASEL 11/12', 8, 4, 2, 2, 12, 17, 4);
INSERT INTO club VALUES(13, 'BATE BORISOV 11/12', 6, 0, 2, 4, 2, 14, 4);
INSERT INTO club VALUES(14, 'BAYERN MUNICH 10/11', 8, 6, 0, 2, 19, 9, 2);
INSERT INTO club VALUES(14, 'BAYERN MUNICH 11/12', 13, 8, 1, 4, 32, 16, 4);
INSERT INTO club VALUES(15, 'BAYER LEVERKUSEN 11/12', 8, 3, 1, 4, 10, 18, 4);
INSERT INTO club VALUES(16, 'BENFICA 10/11', 6, 2, 0, 4, 7, 12, 2);
INSERT INTO club VALUES(16, 'BENFICA 11/12', 10, 4, 3, 3, 13, 10, 4);
INSERT INTO club VALUES(17, 'BORUSSIA DORTMUND 11/12', 6, 1, 1, 4, 6, 12, 4);
INSERT INTO club VALUES(18, 'BORUSSIA MONCHENGLADBACH', );
INSERT INTO club VALUES(19, 'BRAGA 10/11', 6, 3, 0, 3, 5, 11, 2);
INSERT INTO club VALUES(20, 'BURSASPOR 10/11', 6, 0, 1, 5, 2, 16, 2);
INSERT INTO club VALUES(21, 'CELTIC', );
INSERT INTO club VALUES(22, 'CFR CLUJ 10/11', 6, 1, 1, 4, 6, 12, 2);
INSERT INTO club VALUES(23, 'CHELSEA 10/11', 10, 7, 1, 2, 16, 7, 2);
INSERT INTO club VALUES(23, 'CHELSEA 11/12', 13, 8, 3, 2, 29, 15, 4);
INSERT INTO club VALUES(24, 'COPENHAGEN 10/11', 8, 3, 2, 3, 7, 7, 2);
INSERT INTO club VALUES(25, 'CSKA MOSCOW 11/12', 8, 2, 3, 3, 11, 13, 4);
INSERT INTO club VALUES(26, 'DINAMO ZAGREB 11/12', 6, 0, 0, 6, 3, 22, 4);
INSERT INTO club VALUES(27, 'DYNAMO KYIV', );
INSERT INTO club VALUES(28, 'GALATASARAY', );
INSERT INTO club VALUES(29, 'GENK 11/12', 6, 0, 3, 3, 2, 16, 4);
INSERT INTO club VALUES(30, 'GENT', );
INSERT INTO club VALUES(31, 'HAPOEL TEL AVIV 10/11', 6, 1, 2, 3, 7, 10, 2);
INSERT INTO club VALUES(32, 'JUVENTUS', );
INSERT INTO club VALUES(33, 'LILLE 11/12', 6, 1, 3, 2, 6, 6, 4);
INSERT INTO club VALUES(34, 'LIVERPOOL', );
INSERT INTO club VALUES(35, 'LUDOGORETS RAZGRAD', );
INSERT INTO club VALUES(36, 'LYON 10/11', 8, 3, 2, 3, 12, 14, 2);
INSERT INTO club VALUES(36, 'LYON 11/12', 8, 3, 2, 3, 13, 11, 4);
INSERT INTO club VALUES(37, 'INTER MILAN 10/11', 10, 4, 1, 5, 18, 21, 2);
INSERT INTO club VALUES(37, 'INTER MILAN 11/12', 8, 4, 1, 3, 10, 9, 4);
INSERT INTO club VALUES(38, 'MACCABI TEL AVIV', );
INSERT INTO club VALUES(39, 'MALAGA', );
INSERT INTO club VALUES(40, 'MALMO FF', );
INSERT INTO club VALUES(41, 'MANCHESTER CITY 11/12', 6, 3, 1, 2, 9, 6, 4);
INSERT INTO club VALUES(42, 'MANCHESTER UNITED 10/11', 13, 9, 3, 1, 19, 7, 2);
INSERT INTO club VALUES(42, 'MANCHESTER UNITED 11/12', 6, 2, 3, 1, 11, 8, 4);
INSERT INTO club VALUES(43, 'MARIBOR', );
INSERT INTO club VALUES(44, 'MARSEILLE 10/11', 8, 4, 1, 3, 13, 5, 2);
INSERT INTO club VALUES(44, 'MARSEILLE 11/12', 10, 4, 1, 5, 9, 10, 4);
INSERT INTO club VALUES(45, 'MONACO', );
INSERT INTO club VALUES(46, 'MONTPELLIER', );
INSERT INTO club VALUES(47, 'NAPOLI 11/12', 8, 4, 2, 2, 14, 11, 4);
INSERT INTO club VALUES(48, 'NORDSJAELLAND', );
INSERT INTO club VALUES(49, 'OLYMPIACOS 11/12', 6, 3, 0, 3, 8, 6, 4);
INSERT INTO club VALUES(50, 'OTELUL GALATI 11/12', 6, 0, 0, 6, 3, 11, 4);
INSERT INTO club VALUES(51, 'PANATHINAIKOS 10/11', 6, 0, 2, 4, 2, 13, 2);
INSERT INTO club VALUES(52, 'PARITZAN 10/11', 6, 0, 0, 6, 2, 13, 2);
INSERT INTO club VALUES(53, 'PORTO 11/12', 6, 2, 2, 2, 7, 7, 4);
INSERT INTO club VALUES(54, 'PSG', );
INSERT INTO club VALUES(55, 'PSV', );
INSERT INTO club VALUES(56, 'RANGERS 10/11', 6, 1, 3, 2, 3, 6, 2);
INSERT INTO club VALUES(57, 'REAL MADRID 10/11', 12, 8, 3, 1, 25, 6, 2);
INSERT INTO club VALUES(57, 'REAL MADRID 11/12', 12, 10, 1, 1, 36, 12, 4);
INSERT INTO club VALUES(58, 'REAL SOLCIEDAD', );
INSERT INTO club VALUES(59, 'ROMA 10/11', 8, 3, 1, 4, 12, 17, 2);
INSERT INTO club VALUES(60, 'RUBIN KAZAN 10/11', 6, 1, 3, 2, 2, 4, 2);
INSERT INTO club VALUES(61, 'SCHALKE 04 10/11', 12, 7, 2, 3, 20, 16, 2);
INSERT INTO club VALUES(62, 'SEVILLA', );
INSERT INTO club VALUES(63, 'SHAKHTAR DONETSK 10/11', 10, 7, 0, 3, 19, 8, 2);
INSERT INTO club VALUES(63, 'SHAKHTAR DONETSK 11/12', 6, 1, 2, 3, 6, 8, 4);
INSERT INTO club VALUES(64, 'SPARTAK MOSCOW 10/11', 6, 3, 0, 3, 7, 10, 2);
INSERT INTO club VALUES(65, 'SPORTING CP', );
INSERT INTO club VALUES(66, 'STEAUA BUCURESTI', );
INSERT INTO club VALUES(67, 'TOTTENHAM 10/11', 10, 4, 3, 3, 19, 16, 2);
INSERT INTO club VALUES(68, 'TRABZONSPOR 11/12', 6, 1, 4, 1, 3, 5, 4);
INSERT INTO club VALUES(69, 'TWENTE 10/11', 6, 1, 3, 2, 9, 11, 2);
INSERT INTO club VALUES(70, 'VALENCIA 10/11', 8, 3, 3, 2, 17, 8, 2);
INSERT INTO club VALUES(70, 'VALENCIA 11/12', 6, 2, 2, 2, 12, 7, 4);
INSERT INTO club VALUES(71, 'VIKTORIA PLZEN 11/12', 6, 1, 2, 3, 4, 11, 4);
INSERT INTO club VALUES(72, 'VILLARREAL 11/12', 6, 0, 0, 6, 2, 14, 4);
INSERT INTO club VALUES(73, 'WERDER BREMEN 10/11', 6, 1, 2, 3, 6, 12, 2);
INSERT INTO club VALUES(74, 'WOLFSBURG', );
INSERT INTO club VALUES(75, 'ZENIT 11/12', 8, 3, 3, 2, 10, 9, 4);
INSERT INTO club VALUES(76, 'ZILINA', 6, 0, 0, 6, 3, 19, 2);


/*Data for player stats*/
--INSERT INTO playerStats VALUES(playerkey, statkey, name, apperances, goals, assists, nation);
INSERT INTO playerStats VALUES(0, 0, 'Messi', 13, 12, 0, 'Argentina');
