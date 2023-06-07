SELECT Team, COUNT(*) AS Athlete_Count
FROM Athlete
GROUP BY Team
ORDER BY Athlete_Count DESC
LIMIT 10;