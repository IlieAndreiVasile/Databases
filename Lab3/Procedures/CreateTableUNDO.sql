USE [Soccer stats]
GO

DROP PROC undo3
GO

CREATE PROCEDURE undo3
AS
BEGIN
	DROP TABLE Fans
END
GO