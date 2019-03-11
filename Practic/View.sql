USE Practic
GO

CREATE VIEW Va
AS
SELECT *
FROM Architects
WHERE NrDesignedBuildings >= 5

SELECT * FROM Va