INSERT INTO varaukset (tila, varaaja, varauspaiva) VALUES
((SELECT id FROM tilat WHERE nimi = 'Auditorio'), (SELECT id FROM varaajat WHERE nimi = 'Topi'), '2025-01-15'),
((SELECT id FROM tilat WHERE nimi = 'A302'), (SELECT id FROM varaajat WHERE nimi = 'Vili'), '2025-01-20'),
((SELECT id FROM tilat WHERE nimi = 'A203'), (SELECT id FROM varaajat WHERE nimi = 'Mikko'), '2025-01-25');