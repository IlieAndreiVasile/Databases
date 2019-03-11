--All competitions from a country

SELECT CompetitionName
FROM Competitions
WHERE Type = 'National' AND Country = 'England'
ORDER BY CompetitionName
