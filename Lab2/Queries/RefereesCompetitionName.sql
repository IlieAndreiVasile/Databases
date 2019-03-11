-- all referees who have matches in a given competition and whose name starts with M

SELECT r.Name, r.BirthDate
FROM Referees r
INNER JOIN Matches m ON r.Rid = m.Rid
INNER JOIN Competitions c ON m.CompetitionName = c.CompetitionName
WHERE c.CompetitionName = 'Champions League' AND r.Name LIKE ('M%')