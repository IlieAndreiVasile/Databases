USE [Soccer stats]
GO

ALTER PROCEDURE insert_table1
AS
BEGIN
	DECLARE @NoOfRows INT
	DECLARE @n INT
	DECLARE @mn VARCHAR(25)
	DECLARE @na VARCHAR(15)

	SELECT TOP 1 @NoOfRows = NoOfRows
	FROM TestTables
	WHERE TableID = 1 AND TestID = 2

	SET @n = 1

	WHILE @n < @NoOfRows
	BEGIN
		SET @mn = 'ManagerName' + CONVERT (VARCHAR(4), @n)
		SET @na = 'Nationality' + CONVERT (VARCHAR(4), @n)

		INSERT INTO Managers(ManagerName, BirthDate, Nationality) VALUES (@mn, '1972-06-23', @na)
		SET @n = @n+1
	END
END