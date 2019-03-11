USE [Soccer stats]
GO

ALTER PROCEDURE insert_table3
AS
BEGIN
	DECLARE @NoOfRows INT
	DECLARE @n INT
	DECLARE @cn VARCHAR(25)
	DECLARE @comn VARCHAR(30)

	SELECT TOP 1 @NoOfRows = NoOfRows
	FROM TestTables
	WHERE TableID = 3 AND TestID = 13

	SET @n = 1

	WHILE @n < @NoOfRows
	BEGIN
		SET @cn = 'ClubName' + CONVERT (VARCHAR(4), @n)
		SET @comn = 'CompetitionName' + CONVERT (VARCHAR(4), @n)

		INSERT INTO ClubsCompetitions(ClubName, CompetitionName) VALUES (@cn, @comn)
		SET @n = @n+1
	END
END