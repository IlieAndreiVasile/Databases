USE [Soccer stats]
GO

ALTER PROCEDURE delete_table2
AS
BEGIN
	DELETE FROM ClubsCompetitions
	DELETE FROM Players
	DELETE FROM Clubs
END