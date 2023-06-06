SELECT s.Sport, COUNT(e.Event_ID) AS Num_Events
FROM Sport s
JOIN Event e ON s.Sport_ID = e.Sport_ID
GROUP BY s.Sport
ORDER BY Num_Events DESC
LIMIT 5;
