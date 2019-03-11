USE [Soccer stats]
GO

ALTER PROCEDURE CRUD_Competitions @competitionname VARCHAR(30), @type VARCHAR(25), @country VARCHAR(25), @noOfRows INT
AS
BEGIN
	--INSERT
	DECLARE @n INT = 0
	WHILE @n < @noOfRows
	BEGIN
		INSERT INTO Competitions(CompetitionName, Type, Country) VALUES(@competitionname, @type, @country)
		SET @n = @n+1
	END

	--READ
	SELECT *
	FROM Competitions
	ORDER BY CompetitionName

	--UPDATE
	UPDATE Competitions SET Country = 'United Arab Emirates' 
	WHERE CompetitionName = @competitionname

	SELECT *
	FROM Competitions
	ORDER BY CompetitionName

	--DELETE
	DELETE FROM Competitions
	WHERE CompetitionName = @competitionname

	SELECT *
	FROM Competitions
	ORDER BY CompetitionName
END