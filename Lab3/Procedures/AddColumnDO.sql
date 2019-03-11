USE [Soccer stats]
GO

DROP PROC do4
GO

CREATE PROCEDURE do4
AS
BEGIN
	ALTER TABLE Boots
	ADD Color varchar(15)
END
GO