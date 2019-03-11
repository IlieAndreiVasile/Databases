USE [Soccer stats]
GO

DROP PROC do2
GO

CREATE PROCEDURE do2
AS
BEGIN
	ALTER TABLE Players
	ADD CONSTRAINT df_clubname DEFAULT 'Free agent' FOR ClubName
END
GO