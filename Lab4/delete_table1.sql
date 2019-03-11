USE [Soccer stats]
GO

ALTER PROCEDURE delete_table1
AS
BEGIN
	DELETE FROM ClubsCompetitions
	DELETE FROM Players
	DELETE FROM Clubs
	DELETE FROM Managers
END 