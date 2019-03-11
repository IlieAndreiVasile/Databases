USE [Soccerstats]
GO

DROP PROC do1
DROP PROC undo1
DROP PROC do2
DROP PROC undo2
DROP PROC do3
DROP PROC undo3
DROP PROC do4
DROP PROC undo4
DROP PROC do5
DROP PROC undo5
DROP PROC main
DROP TABLE Version


CREATE TABLE Version
	(
	version int
	)

INSERT INTO Version(version) VALUES(0)


GO
CREATE PROCEDURE do1
AS
BEGIN
	ALTER TABLE Clubs
	ALTER COLUMN Budget varchar(20)
END
GO

CREATE PROCEDURE undo1
AS
BEGIN
	ALTER TABLE Clubs
	ALTER COLUMN Budget int
END
GO

CREATE PROCEDURE do2
AS
BEGIN
	ALTER TABLE Players
	ADD CONSTRAINT df_clubname DEFAULT 'Free agent' FOR ClubName
END
GO

CREATE PROCEDURE undo2
AS
BEGIN
	ALTER TABLE Players
	DROP CONSTRAINT df_clubname
END
GO

CREATE PROCEDURE do3
AS
BEGIN
	CREATE TABLE Fans
	(
		Fid INT PRIMARY KEY,
		Name varchar(30),
		ClubName varchar(25)
	)
END
GO

CREATE PROCEDURE undo3
AS
BEGIN
	DROP TABLE Fans
END
GO

CREATE PROCEDURE do4
AS
BEGIN
	ALTER TABLE Boots
	ADD Color varchar(15)
END
GO

CREATE PROCEDURE undo4
AS
BEGIN
	ALTER TABLE Boots
	DROP COLUMN Color
END
GO

CREATE PROCEDURE do5
AS
BEGIN
	ALTER TABLE Fans
	ADD CONSTRAINT fk_Fans_Clubs FOREIGN KEY(ClubName) REFERENCES Clubs(ClubName)
END
GO

CREATE PROCEDURE undo5
AS
BEGIN
	ALTER TABLE Fans
	DROP CONSTRAINT fk_Fans_Clubs
END
GO



CREATE PROCEDURE main (@vers INT)
AS
BEGIN
	DECLARE @currentVersion INT
	SET @currentVersion = (SELECT MAX(version) FROM Version)



	IF @vers < 0 or @vers > 5
	BEGIN
	PRINT N'Invalid version!';
	END

	ELSE
	BEGIN

	WHILE @vers < @currentVersion
	BEGIN
		EXEC('EXEC undo' + @currentVersion)
		SET @currentVersion = @currentVersion - 1
	END
	WHILE @vers > @currentVersion
	BEGIN
		SET @currentVersion = @currentVersion + 1
		EXEC('EXEC do' + @currentVersion)
	END

	UPDATE Version
	SET version = @currentVersion

	END
END
GO

EXEC main 0

SELECT *
FROM Version

SELECT *
FROM Players

SELECT *
FROM Clubs

Select * 
From Boots