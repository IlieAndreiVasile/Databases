USE [Soccer stats]
GO

ALTER PROCEDURE CRUD_Clubs @clubname VARCHAR(25), @stadium VARCHAR(30), @foundationyear INT, @value BIGINT, @budget BIGINT, @noOfRows INT
AS
BEGIN
	--INSERT
	DECLARE @n INT = 0
	WHILE @n < @noOfRows
	BEGIN
		INSERT INTO Clubs(ClubName, Stadium, FoundationYear, Value, Budget) VALUES(@clubname, @stadium, @foundationyear, @value, @budget)
		SET @n = @n+1
	END

	--READ
	SELECT *
	FROM Clubs
	ORDER BY Value

	--UPDATE
	UPDATE Clubs SET Value = 7770000000 
	WHERE ClubName = @clubname

	SELECT *
	FROM Clubs
	ORDER BY Value DESC

	--DELETE
	DELETE FROM Clubs
	WHERE ClubName = @clubname

	SELECT *
	FROM Clubs
	ORDER BY Value
END