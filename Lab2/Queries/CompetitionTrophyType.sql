--all competitions with cup trophy

SELECT c.CompetitionName, c.Type, c.Country
FROM Competitions c
Inner join Trophies t on t.TrophyName = c.CompetitionName
WHERE t.Type = 'Cup'
ORDER BY c.Type, c.Country