USE [Soccer stats]
GO

CREATE OR ALTER FUNCTION ValidatePlayerName (@playername VARCHAR(50))
RETURNS bit
AS
BEGIN
RETURN
(
SELECT 
	CASE
		WHEN @playername is NULL THEN 0
		WHEN charindex(';', @playername) <> 0 OR
			 charindex(':', @playername) <> 0 OR
			 charindex('/', @playername) <> 0 THEN 0
		ELSE 1
	END
)
END