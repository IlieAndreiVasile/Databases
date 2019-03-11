--all players from a given club that play for a given national team.

SELECT p.Position, p.Name --, count(ClubName) as Names
FROM Players p
INNER JOIN NationalTeams nt ON p.NTName = nt.Country
INNER JOIN Clubs c ON p.ClubName = c.ClubName
WHERE c.ClubName = 'Real Madrid' AND nt.Country = 'Spain'
GROUP BY p.Position, p.Name