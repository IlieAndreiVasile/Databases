USE [Soccer stats]
GO

ALTER PROCEDURE RunTestViews
AS
BEGIN
	DECLARE @ds1 DATE
	DECLARE @de1 DATE
	SET @ds1 = GETDATE()
	EXECUTE RunView_1
	SET @de1 = GETDATE()
	INSERT INTO TestRunViews(TestRunID, ViewID, StartAT, EndAt) VALUES (3, 1, @ds1, @de1)
	

	DECLARE @ds2 DATE
	DECLARE @de2 DATE
	SET @ds2 = GETDATE()
	EXECUTE RunView_2
	SET @de2 = GETDATE()
	INSERT INTO TestRunViews(TestRunID, ViewID, StartAt, EndAt) VALUES (3, 2, @ds2, @de2)
	

	DECLARE @ds3 DATE
	DECLARE @de3 DATE
	SET @ds3 = GETDATE()
	EXECUTE RunView_3
	SET @de3 = GETDATE()
	INSERT INTO TestRunViews(TestRunID, ViewID, StartAT, EndAt) VALUES (3, 3, @ds3, @de3)
END