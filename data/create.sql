CREATE TABLE place (
	idPlace INTEGER PRIMARY KEY AUTOINCREMENT,
	idConcert INTEGER,
	dispo BOOLEAN,
    numSiege INTEGER
);

CREATE TABLE siege (
	numSiege INTEGER PRIMARY KEY,
	idZone INTEGER,
    FOREIGN KEY (numSiege) REFERENCES place(numSiege),
    FOREIGN KEY (idZone) REFERENCES zone(idZone)
);


CREATE TABLE panier (
	idClient INTEGER PRIMARY KEY AUTOINCREMENT,
    timeExp DATETIME,
	idPlace INTEGER,
    FOREIGN KEY (idPlace) REFERENCES place(idPlace)
);

CREATE TABLE concert (
	idConcert INTEGER PRIMARY KEY AUTOINCREMENT,
	nom TEXT,
	event_date DATETIME
);

CREATE TABLE tarif (
	idConcert INTEGER,
	idZone INTEGER,
	tarif INTEGER,
	PRIMARY KEY (idConcert,idZone)
	FOREIGN KEY (idConcert) REFERENCES concert(idConcert)
);
