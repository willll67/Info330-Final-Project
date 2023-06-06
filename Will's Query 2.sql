SELECT c.Name AS Country, COUNT(a.Medal) AS Gold_Medals
FROM Athlete a
JOIN Country c ON a.Country_ID = c.Country_ID
WHERE a.Medal = 'Gold'
GROUP BY c.Name
ORDER BY Gold_Medals DESC
LIMIT 1;
