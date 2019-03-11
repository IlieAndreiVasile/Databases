USE [Soccer stats]
GO

DROP PROC do5
GO

CREATE PROCEDURE do5
AS
BEGIN
	ALTER TABLE Fans
	ADD CONSTRAINT fk_Fans_Clubs FOREIGN KEY(ClubName) REFERENCES CLUBS(ClubName)
END
GO