CREATE TABLE Countries (
    CountryID INTEGER PRIMARY KEY,
    CountryName TeXT NOT NULL,
    NOC TEXT NOT NULL
);
CREATE TABLE Athletes (
    AthleteID INTEGER PRIMARY KEY,
    Name TEXT NOT NULL,
    Sex TEXT NOT NULL,
    Age INTEGER,
    Height TEXT,
    Weight TEXT,
    Team TEXT,
    CountryID INTEGER,
    FOREIGN KEY (CountryID) REFERENCES Countries(CountryID)
);
CREATE TABLE Medals (
    MedalID INTEGER PRIMARY KEY,
    MedalType TEXT NOT NULL
);
CREATE TABLE Events (
    EventID INTEGER PRIMARY KEY,
    EventName TEXT NOT NULL
);
CREATE TABLE Games (
    GameID INTEGER PRIMARY KEY,
    Year INTEGER,
    Season TEXT,
    City TEXT
);
ALTER TABLE athlete_events
DROP COLUMN Games;