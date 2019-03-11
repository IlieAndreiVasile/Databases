USE [Soccer stats]
GO

DROP PROC undo1
GO

CREATE PROCEDURE undo1
AS
BEGIN
	ALTER TABLE Clubs
	ALTER COLUMN Budget int
END
GO