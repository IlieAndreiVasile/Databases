USE [Soccer stats]
GO

ALTER PROCEDURE RunTestTables @param INT
AS
BEGIN
	DECLARE @ds DATE
	DECLARE @de DATE

	DECLARE @exe VARCHAR(50)
	SET @exe = 'insert_table' + CONVERT(VARCHAR(3), @param)
	SET @ds = GETDATE()
	EXECUTE @exe
	SET @de = GETDATE()
	INSERT INTO TestRunTables(TestRunID, TableID, StartAt, EndAt) VALUES (1, @param, @ds, @de)

	SET @exe = 'delete_table' + CONVERT(VARCHAR(3), @param)
	SET @ds = GETDATE()
	EXECUTE @exe
	SET @de = GETDATE()
	INSERT INTO TestRunTables(TestRunID, TableID, StartAt, EndAt) VALUES (2, @param, @ds, @de)
END