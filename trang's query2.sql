SELECT Medal, AVG(Height) AS AverageHeight, AVG(Weight) AS AverageWeight
FROM Athlete
WHERE Medal != 'NA'
GROUP BY Medal;