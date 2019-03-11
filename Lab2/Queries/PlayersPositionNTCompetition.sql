-- all players with a given position that participate at world cup with their national team

SELECT p.NTName, p.Position, p.Name
FROM Players p
INNER JOIN NationalTeams nt ON p.NTName = nt.Country
INNER JOIN NationalTeamsCompetitions ntc ON nt.Country = ntc.NationalTeamName
INNER JOIN Competitions c ON ntc.CompetitionName = c.CompetitionName
WHERE c.CompetitionName = 'World Cup'
GROUP BY p.NTName, p.Position, p.Name
HAVING p.Position = 'Striker'