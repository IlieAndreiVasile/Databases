USE [Soccer stats]
GO

DROP PROC undo2
GO

CREATE PROCEDURE undo2
AS
BEGIN
	ALTER TABLE Players
	DROP CONSTRAINT df_clubname
END
GO