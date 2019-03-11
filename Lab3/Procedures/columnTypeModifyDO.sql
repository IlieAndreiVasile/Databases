USE [Soccer stats]
GO

DROP PROC do1
GO

CREATE PROCEDURE do1
AS
	BEGIN
	ALTER TABLE Clubs
	ALTER COLUMN Budget varchar(20)
END
GO