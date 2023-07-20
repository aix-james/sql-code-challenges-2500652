-- This file is intended for notes
-- and for demonstrating how to work
-- with SQLite in Codespaces.
-- These two statements operate on the 
-- restaurant.db SQLite database.

SELECT *
FROM Dishes;

SELECT vorname, nachname, email
FROM kunden
order by nachname;
CREATE TABLE TeilnahmeJubilaeum (
KundenID INTEGER,
PartyGroesse INTEGER
);
DROP TABLE TeilnahmeJubilaeum;
SELECT * from Speise
order by Preis ASC;
SELECT * from Speise
where Typ in('Vorspeise','Getränk')
order by Name
SELECT * from Speise
where Typ not in ('Getränk')

SELECT * FROM Kunden order by KundenID DESC
where KundenID=101;
PRAGMA table_info(Kunden);
Insert into Kunden (Vorname,Nachname,Email,Adresse, Stadt,State, Telefon, Geburtstag)
Values ('Anne', 'Smith', 'asmith@samoca.org','479 Lapis Dr.','Memphis','TN','555-555-1212','1973-7-21');

SELECT KundenID,Nachname, Adresse,Stadt, State from Kunden
where Nachname='Jenkins' and Vorname='Taylor' and Adresse like '74%'

UPDATE Kunden
set Adresse='74 Pine St.', Stadt='New York', State='NY'
where KundenID=26 and Nachname='Jenkins' and Vorname='Taylor';