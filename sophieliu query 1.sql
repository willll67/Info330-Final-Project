SELECT Name, COUNT(*) AS GoldMedalCount
FROM imported_olympic_data
WHERE Medal = 'Gold'
GROUP BY Name
ORDER BY GoldMedalCount DESC
LIMIT 1;
