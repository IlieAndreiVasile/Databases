USE [Soccer stats]
GO

ALTER PROCEDURE CRUD_ClubsCompetitions @noOfRows INT
AS
BEGIN
	--INSERT
	DECLARE @fkcl VARCHAR(40)
	SELECT TOP 1 @fkcl = ClubName FROM Clubs WHERE ClubName LIKE 'Bar%'
	DECLARE @fkco VARCHAR(40)
	SELECT TOP 1 @fkco = CompetitionName FROM Competitions WHERE CompetitionName LIKE 'Ligu%'

	DECLARE @n INT = 0
	WHILE @n < @noOfRows
	BEGIN
		INSERT INTO ClubsCompetitions(ClubName, CompetitionName) VALUES(@fkcl, @fkco)
		SET @n = @n+1
	END

	--READ
	SELECT *
	FROM ClubsCompetitions
	ORDER BY CompetitionName

	--UPDATE
	UPDATE ClubsCompetitions SET CompetitionName = 'Premier League' 
	WHERE ClubName = @fkcl AND CompetitionName = @fkco

	SELECT *
	FROM ClubsCompetitions
	ORDER BY CompetitionName

	--DELETE
	DELETE FROM ClubsCompetitions
	WHERE ClubName = @fkcl AND CompetitionName = 'Premier League'

	SELECT *
	FROM ClubsCompetitions
	ORDER BY CompetitionName
END