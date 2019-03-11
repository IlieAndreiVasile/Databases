USE [Soccer stats]
GO

ALTER PROCEDURE CRUD_Players @pid INT, @name VARCHAR(50), @birthdate DATE, @nationality VARCHAR(15), @kitnr INT, @position VARCHAR(20), @noOfRows INT
AS
BEGIN
	--INSERT
	DECLARE @fkb VARCHAR(40)
	SELECT TOP 1 @fkb = BootsName FROM Boots
	DECLARE @fkc VARCHAR(25)
	SELECT TOP 1 @fkc = ClubName FROM Clubs
	DECLARE @fkn VARCHAR(25)
	SELECT TOP 1 @fkn = Country FROM NationalTeams

	DECLARE @n INT = 0
	WHILE @n < @noOfRows
	BEGIN
		INSERT INTO Players(Pid, Name, BirthDate, Nationality, KitNr, Position, BootsName, ClubName, NTName) VALUES(@pid, @name, @birthdate, @nationality, @kitnr, @position, @fkb, @fkc, @fkn)
		SET @n = @n+1
	END

	--READ
	SELECT *
	FROM Players
	ORDER BY Pid DESC

	--UPDATE
	UPDATE Players SET Position = 'Left Midfielder' 
	WHERE Pid = @pid

	SELECT *
	FROM Players
	ORDER BY Pid DESC

	--DELETE
	DELETE FROM Players
	WHERE Pid = @pid

	SELECT *
	FROM Players
	ORDER BY Pid DESC
END