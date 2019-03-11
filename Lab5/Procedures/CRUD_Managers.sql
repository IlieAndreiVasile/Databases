USE [Soccer stats]
GO

ALTER PROCEDURE CRUD_Managers @name VARCHAR(50), @birthdate DATE, @nationality VARCHAR(15), @noOfRows INT
AS
BEGIN
	--INSERT
	DECLARE @fkc VARCHAR(25)
	SELECT TOP 1 @fkc = ClubName FROM Clubs WHERE ClubName LIKE 'Mi%'

	DECLARE @n INT = 0
	WHILE @n < @noOfRows
	BEGIN
		INSERT INTO Managers(Name, ClubName, BirthDate, Nationality) VALUES(@name, @fkc, @birthdate, @nationality)
		SET @n = @n+1
	END

	--READ
	SELECT *
	FROM Managers
	ORDER BY Name

	--UPDATE
	UPDATE Managers SET BirthDate = '1978-01-10'
	WHERE Name = @name

	SELECT *
	FROM Managers
	ORDER BY Name

	--DELETE
	DELETE FROM Managers
	WHERE Name = @name

	SELECT *
	FROM Managers
	ORDER BY Name
END