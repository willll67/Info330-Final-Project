SELECT Medal, AVG(Height) AS AverageHeight, AVG(Weight) AS AverageWeight
FROM athlete_events
WHERE Medal != 'NA'
GROUP BY Medal;

SELECT Season, Sex, AVG(Age) AS AverageAge
FROM athlete_events
GROUP BY Season, 
SELECT Event, COUNT(*) AS ParticipantCount
FROM athlete_events
GROUP BY Event
ORDER BY ParticipantCount DESC
LIMIT 10;