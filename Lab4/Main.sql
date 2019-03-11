USE [Soccer stats]
GO

DELETE FROM TestRunTables
DELETE FROM TestRunViews
DELETE FROM TestRuns

DECLARE @ds DATETIME
DECLARE @de DATETIME

SET @ds = GETDATE()
INSERT INTO TestRuns(Description, StartAt, EndAt) VALUES ('Insert', @ds, @ds)
INSERT INTO TestRuns(Description, StartAt, EndAt) VALUES ('Delete', @ds, @ds)

EXECUTE RunTestTables 1

SET @de = GETDATE()
UPDATE TestRuns
SET EndAt = @de
WHERE Description = 'Insert' OR Description = 'Delete'

---

SET @ds = GETDATE()
INSERT INTO TestRuns(Description, StartAt, EndAt) VALUES ('View', @ds, @ds)

EXECUTE RunTestViews

SET @de = GETDATE()
UPDATE TestRuns
SET EndAt = @de
WHERE Description = 'View'