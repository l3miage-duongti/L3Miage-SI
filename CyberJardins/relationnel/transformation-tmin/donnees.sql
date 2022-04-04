INSERT INTO LesEtudiants VALUES ('jean', 22);
INSERT INTO LesEtudiants VALUES ('ahmed', 19);
INSERT INTO LesEtudiants VALUES ('ralf', 23);
INSERT INTO LesEtudiants VALUES ('louis', 24);
INSERT INTO LesEtudiants VALUES ('marie', 21);

INSERT INTO LesBatiments VALUES ('vivaldi',45,'economique');
INSERT INTO LesBatiments VALUES ('mozart',240,'premium');

INSERT INTO LesJardins VALUES ('pomme',240);
INSERT INTO LesJardins VALUES ('choux',210);

INSERT INTO LesAppartements VALUES (110 , 'vivaldi', 80, 8, 'appartement plus', 800, 3, 1, null, null, null);
INSERT INTO LesAppartements VALUES (110 , 'mozart', 35, 3, 'appartement ', null, null, null, null, null, null);
INSERT INTO LesAppartements VALUES (120 , 'mozart', 12, 2, 'chambre', null, null, null, 160, 1, 2);
INSERT INTO LesAppartements VALUES (130 , 'mozart', 14, 2, 'chambre', null, null, null, 160, 1, 2);

INSERT INTO Contient VALUES ('vivaldi', 110);
INSERT INTO Contient VALUES ('mozart', 110);
INSERT INTO Contient VALUES ('mozart', 120);
INSERT INTO Contient VALUES ('mozart', 130);

INSERT INTO Garde VALUES ('jean', 'vivaldi', 1, 2);
INSERT INTO Garde VALUES ('ralf', 'vivaldi', 3, 4);
INSERT INTO Garde VALUES ('ralf', 'mozart', 1, 12);

INSERT INTO Inspecte VALUES ('ahmed', 'vivaldi');
INSERT INTO Inspecte VALUES ('louis', 'vivaldi');
INSERT INTO Inspecte VALUES ('louis', 'mozart');

INSERT INTO Occupe VALUES ('jean', 110, 'vivaldi');
INSERT INTO Occupe VALUES ('louis', 110, 'mozart');
INSERT INTO Occupe VALUES ('ahmed', 120, 'mozart');
INSERT INTO Occupe VALUES ('ralf', 120, 'mozart');
INSERT INTO Occupe VALUES ('marie', 110, 'mozart');

INSERT INTO Partage VALUES (110, 'mozart', 'pomme', 30);
INSERT INTO Partage VALUES (110, 'vivaldi', 'pomme', 70);