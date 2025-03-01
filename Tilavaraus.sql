CREATE DATABASE tilavaraus;
USE tilavaraus;

-- Luodaan taulut
CREATE TABLE tilat (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nimi VARCHAR(255) NOT NULL
);

CREATE TABLE varaajat (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nimi VARCHAR(255) NOT NULL
);

CREATE TABLE varaukset (
  id INT AUTO_INCREMENT PRIMARY KEY,
  tila INT,
  varaaja INT,
  varauspaiva DATE,
  INDEX (tila),
  INDEX (varaaja),
  FOREIGN KEY (tila) REFERENCES tilat(id),
  FOREIGN KEY (varaaja) REFERENCES varaajat(id)
);

-- Lisätään tilat
INSERT INTO tilat (nimi) VALUES ('Auditorio'), ('A302'), ('A203');

-- Lisätään varaajat
INSERT INTO varaajat (nimi) VALUES ('Topi'), ('Vili'), ('Mikko');
INSERT INTO varaukset (tila, varaaja, varauspaiva) VALUES
((SELECT id FROM tilat WHERE nimi = 'Auditorio'), (SELECT id FROM varaajat WHERE nimi = 'Topi'), '2025-01-15'),
((SELECT id FROM tilat WHERE nimi = 'A302'), (SELECT id FROM varaajat WHERE nimi = 'Vili'), '2025-01-20'),
((SELECT id FROM tilat WHERE nimi = 'A203'), (SELECT id FROM varaajat WHERE nimi = 'Mikko'), '2025-01-25');