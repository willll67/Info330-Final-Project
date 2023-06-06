SELECT Countries.CountryName, COUNT(*) AS ParticipantCount
FROM Athletes
INNER JOIN Countries ON Athletes.CountryID = Countries.CountryID
GROUP BY Countries.CountryName
ORDER BY ParticipantCount DESC
LIMIT 10;