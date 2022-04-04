DROP TABLE IF EXISTS Inspecte;
DROP TABLE IF EXISTS Occupe;
DROP TABLE IF EXISTS Partage;
DROP TABLE IF EXISTS LesBatiments;
DROP TABLE IF EXISTS LesEtudiants;
DROP TABLE IF EXISTS LesJardins;
DROP TABLE IF EXISTS LesAppartements;
DROP TABLE IF EXISTS Garde;
DROP TABLE IF EXISTS Contient;


-- @UML TC(Etudiant)
CREATE TABLE LesEtudiants(
    nom VARCHAR(100) PRIMARY KEY,
    age INTEGER NOT NULL
);

-- @UML TC(Batiments)
CREATE TABLE LesBatiments(
    nom VARCHAR(100) PRIMARY KEY,
    capacite INTEGER NOT NULL,
    categorie VARCHAR(100)
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
    capacite INTEGER,
    nbPieces INTEGER,
    caution INTEGER,
    televisions INTEGER,
    vueJardins BIT,
    tailleLit INTEGER,
    frigo BIT,
    nbFenetres INTEGER,
    PRIMARY KEY(numero, batiment)
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
    debut INTEGER,
    fin INTEGER,
    PRIMARY KEY (etudiant, batiment, debut, fin)
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
    appartement INTEGER,
    batiment VARCHAR(100),
    jardin VARCHAR(100),
    quotite INTEGER,
    FOREIGN KEY (appartement, batiment) REFERENCES LesAppartements(numero, batiment),
    PRIMARY KEY (appartement, batiment, jardin)
);
