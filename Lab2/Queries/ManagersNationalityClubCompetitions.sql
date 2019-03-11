-- all managers with a given nationality from a given competition

SELECT m.Name, m.ClubName
FROM Managers m
INNER JOIN Clubs c ON m.ClubName = c.ClubName
INNER JOIN ClubsCompetitions cc ON c.ClubName = cc.ClubName
WHERE m.Nationality = 'German' AND cc.CompetitionName = 'Champions League'