DROP TABLE IF EXISTS Inspecte;
DROP TABLE IF EXISTS Occupe;
DROP TABLE IF EXISTS Partage;
DROP TABLE IF EXISTS LesBatiments;
DROP TABLE IF EXISTS LesCategories;
DROP TABLE IF EXISTS LesEtudiants;
DROP TABLE IF EXISTS LesJardins;
DROP TABLE IF EXISTS LesAppartements;
DROP TABLE IF EXISTS LesAppartPlus;
DROP TABLE IF EXISTS LesChambres;
DROP TABLE IF EXISTS Garde;
DROP TABLE IF EXISTS LesGardes;
DROP TABLE IF EXISTS LesPartages;
DROP TABLE IF EXISTS Contient;


-- @UML TC(Etudiant)
CREATE TABLE LesEtudiants(
    nom VARCHAR(100) PRIMARY KEY,
    age INTEGER NOT NULL
);

-- @UML TEG(Categorie)
CREATE TABLE LesCategories(
    valeur VARCHAR(100) PRIMARY KEY
);

-- @UML TC(Batiments)
CREATE TABLE LesBatiments(
    nom VARCHAR(100) PRIMARY KEY,
    capacite INTEGER NOT NULL,
    categorie VARCHAR(100),
    FOREIGN KEY (categorie) REFERENCES LesCategories(valeur)
);

-- @UML TC(Jardin)
CREATE TABLE LesJardins(
    nom VARCHAR(100) PRIMARY KEY,
    superficie INTEGER NOT NULL
);

-- @UML TC (Appartement)
CREATE TABLE LesAppartements(
	numero INTEGER NOT NULL,
    batiment VARCHAR(100) NOT NULL,
    superficie INTEGER NOT NULL,
    capacite INTEGER NOT NULL,
    PRIMARY KEY(numero, batiment)
);

-- @UML TC (AppartPlus)
CREATE TABLE LesAppartPlus(
    batiment VARCHAR(100),
    numero INTEGER NOT NULL,
    superficie INTEGER NOT NULL,
    capacite INTEGER NOT NULL,
    nbPieces INTEGER NOT NULL,
    caution INTEGER NOT NULL,
    televisions INTEGER,
    vueJardins BIT,
    PRIMARY KEY(batiment, numero)
);

-- @UML TC (Chambre)
CREATE TABLE LesChambres(
    batiment VARCHAR(100),
    numero INTEGER NOT NULL,
    superficie INTEGER NOT NULL,
    capacite INTEGER NOT NULL,
    tailleLit INTEGER NOT NULL,
    frigo BIT,
    nbFenetres INTEGER,
    PRIMARY KEY(batiment, numero)
);

-- @UML TAG (Garde)
CREATE TABLE LesGardes(
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    debut INTEGER,
    fin INTEGER
);

-- @UML TAG (Partage)
CREATE TABLE LesPartages(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    quotite INTEGER
);

-- @UML TAG (Contient)
CREATE TABLE Contient(
    batiment VARCHAR(100),
    appartement VARCHAR(100),
    PRIMARY KEY(batiment, appartement)
);

-- @UML TAG (Garde)
CREATE TABLE Garde(
    etudiant VARCHAR(100),
    batiment VARCHAR(100),
    id_garde INTEGER,
   FOREIGN KEY (id_garde) REFERENCES LesGardes(id)
);

-- @UML TAG (Inspecte)
CREATE TABLE Inspecte(
    etudiant VARCHAR(100),
    batiment VARCHAR(100),
    FOREIGN KEY (etudiant) REFERENCES LesEtudiants(nom),
	FOREIGN KEY (batiment) REFERENCES LesBatiments(nom),
    PRIMARY KEY (etudiant, batiment)
);

-- @UML TAG (Occupe)
CREATE TABLE Occupe(
    etudiant VARCHAR(100),
    appartement INTEGER,
    batiment VARCHAR(100),
    FOREIGN KEY (etudiant) REFERENCES LesEtudiants(nom),
    FOREIGN KEY (appartement, batiment) REFERENCES LesAppartements(numero, batiment),
    PRIMARY KEY (etudiant, appartement, batiment)
);

-- @UML TAG (Partage)
CREATE TABLE Partage(
    id_Partage INTEGER,
    appartement INTEGER,
    batiment VARCHAR(100),
    jardin VARCHAR(100),
    FOREIGN KEY (id_Partage) REFERENCES LesPartages(id),
    FOREIGN KEY (appartement, batiment) REFERENCES LesAppartements(numero, batiment),
    PRIMARY KEY (id_Partage, appartement, batiment, jardin)
);
