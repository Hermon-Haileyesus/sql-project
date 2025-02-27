CREATE DATABASE leffat;
CREATE TABLE herrypotter (id  int AUTO_INCREMENT, Years int, Film varchar(255), Director varchar(255), Screenwriters varchar(100), Producers varchar(255), Composer varchar(100), Novelby  varchar(255), PRIMARY KEY (id));

INSERT INTO herrypotter (Years,	Film, Director, Screenwriters, Producers, Composer, Novelby) 
VALUES 
(2001, "Harry Potter and the
Philosopher's Stone", "Chris Columbus", "Steve Kloves", "David Heyman",	"John Williams", 
"Harry Potter and the Philosopher's Stone (1997)"), 
(2002, "Harry Potter and the Chamber of Secrets", "Chris Columbus", "Steve Kloves",
 "David Heyman","John Williams", "Harry Potter and the Chamber of Secrets (1998)"),
 (2004, "Harry Potter and the Prisoner of Azkaban", "Alfonso Cuarón", "Steve Kloves",
  "David Heyman, Chris Columbus and Mark Radcliffe", "John Williams", "Harry Potter and the Prisoner of Azkaban (1999)");
