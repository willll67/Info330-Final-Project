SELECT Medal, AVG(Height) AS AverageHeight, AVG(Weight) AS AverageWeight
FROM athlete_events
WHERE Medal != 'NA'
GROUP BY Medal;

