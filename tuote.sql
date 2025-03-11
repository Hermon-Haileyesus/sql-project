- Luo tietokanta
CREATE DATABASE tuoterekisteri;

-- Siirry tietokantaan
USE tuoterekisteri;

-- Luo taulu
CREATE TABLE tuotteet (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nimi VARCHAR(255) NOT NULL,
    hinta DECIMAL(10, 2) NOT NULL,
    kuvaus TEXT,
    luotu TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
