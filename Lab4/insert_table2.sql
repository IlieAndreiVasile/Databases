USE [Soccer stats]
GO

ALTER PROCEDURE insert_table2
AS
BEGIN
	DECLARE @NoOfRows INT
	DECLARE @n INT
	DECLARE @fk VARCHAR(25)
	DECLARE @cn VARCHAR(25)
	DECLARE @s VARCHAR(30)

	SELECT TOP 1 @fk = ManagerName
	FROM Managers

	SELECT TOP 1 @NoOfRows = NoOfRows
	FROM TestTables
	WHERE TableID = 2 AND TestID = 11

	SET @n = 1

	WHILE @n < @NoOfRows
	BEGIN
		SET @cn = 'ClubName' + CONVERT (VARCHAR(4), @n)
		SET @s = 'Stadium' + CONVERT (VARCHAR(4), @n)

		INSERT INTO Clubs(ClubName, Stadium, FoundationYear, Value, Budget, ManagerName) VALUES (@cn, @s, 1902, 3313912000, 150867840, @fk)
		SET @n = @n+1
	END
END