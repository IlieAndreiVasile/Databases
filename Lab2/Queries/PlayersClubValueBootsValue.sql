-- all players from clubs with value > 1000000000 and with boots value > 240 

SELECT p.ClubName, p.Name, b.Price
FROM Players p
INNER JOIN Clubs c ON p.ClubName = c.ClubName
INNER JOIN Boots b ON p.BootsName = b.BootsName
WHERE c.Value > 1000000000
GROUP BY p.ClubName, p.Name, b.Price
HAVING b.Price > 240