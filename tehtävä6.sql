CREATE DATABASE kurssi_ilmoittautumiset;
USE kurssi_ilmoittautumiset;
CREATE TABLE  opiskelijat (id int AUTO_INCREMENT, nimi varchar(255), PRIMARY KEY (id));
CREATE TABLE  kurssit (id int AUTO_INCREMENT, nimi varchar(255), PRIMARY KEY (id));
CREATE TABLE  ilmoittautumiset (id int AUTO_INCREMENT, opiskelija int, kurssi int, PRIMARY KEY (id),
FOREIGN KEY (opiskelija) REFERENCES opiskelijat(id),FOREIGN KEY (kurssi) REFERENCES kurssit(id));
INSERT INTO opiskelijat(nimi) VALUES("Hermon"), ("Hanna"), ("Eelis");
INSERT INTO kurssit(nimi) VALUES ("matematiikka"),("ohjelmointi"),("taide");
INSERT INTO ilmoittautumiset(opiskelija, kurssi) VALUES (1,3), (2,1),(3,1);