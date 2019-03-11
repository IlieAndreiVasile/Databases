--players with a given boots model from a given competition

SELECT p.Name, p.BootsName
FROM Players p
INNER JOIN Boots b ON p.BootsName = b.BootsName
INNER JOIN Clubs c ON p.ClubName = c.ClubName
INNER JOIN ClubsCompetitions cc ON c.ClubName = cc.ClubName
INNER JOIN Competitions co ON cc.CompetitionName = co.CompetitionName
WHERE b.BootsName = 'Adidas X 17.1' AND co.CompetitionName = 'Premier League'