USE [Soccer stats]
GO

DROP PROC do3
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