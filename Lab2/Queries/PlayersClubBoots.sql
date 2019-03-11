-- Players from a given club with a given boots manufacturer

SELECT p.BootsName, p.Position, p.Name, p.ClubName
FROM Players p
INNER JOIN Clubs c ON c.ClubName = p.ClubName
INNER JOIN Boots b ON b.BootsName = p.BootsName
WHERE c.ClubName = 'Manchester City' AND b.Manufacturer = 'Nike'
GROUP BY p.BootsName, p.Position, p.Name, p.ClubName