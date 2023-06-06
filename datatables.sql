INSERT INTO Countries (CountryName, NOC)
SELECT DISTINCT Team, NOC
FROM athlete_events;

INSERT INTO Athletes (Name, Sex, Age, Height, Weight, Team, CountryID)
SELECT Name, Sex, Age, Height, Weight, Team, CountryID
FROM athlete_events
INNER JOIN Countries ON athlete_events.Team = Countries.CountryName AND athlete_events.NOC = Countries.NOC;

INSERT INTO Medals (MedalType)
SELECT DISTINCT Medal
FROM athlete_events;

INSERT INTO Events (EventName)
SELECT DISTINCT Event
FROM athlete_events;

INSERT INTO Games (Year, Season, City)
SELECT DISTINCT Year, Season, City
FROM athlete_events;