CREATE TABLE Ludzie(
    id int PRIMARY KEY AUTO_INCREMENT,
    wiek int NOT NULL,
    CONSTRAINT chk_wiek CHECK(wiek<15)
);

CREATE TABLE Praca(
    id int PRIMARY KEY AUTO_INCREMENT,
    nazwa varchar(50) UNIQUE
);

ALTER TABLE Ludzie
ADD praca int,
ADD FOREIGN KEY(praca) REFERENCES Praca(id);