--all national teams from a given continent

SELECT Country
FROM NationalTeams
WHERE Continent = 'Europe'
ORDER BY Country