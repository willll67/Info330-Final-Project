SELECT Year, COUNT(DISTINCT Name) AS NumParticipants
FROM imported_olympic_data
WHERE NOC = 'USA'
GROUP BY Year
ORDER BY Year;

