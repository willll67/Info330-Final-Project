SELECT Year, Sex, COUNT(DISTINCT ID) as Athlete_Sex_Count
FROM imported_olympic_data
GROUP BY Year, Sex
ORDER BY Year;
