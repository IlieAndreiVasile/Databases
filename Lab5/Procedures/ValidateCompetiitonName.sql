USE [Soccer stats]
GO

CREATE OR ALTER FUNCTION ValidateCompetitionName (@competitionname VARCHAR(30))
RETURNS bit
AS
BEGIN
RETURN
(
SELECT 
	CASE
		WHEN @competitionname is NULL THEN 0
		WHEN charindex(';', @competitionname) <> 0 OR
			 charindex(':', @competitionname) <> 0 OR
			 charindex('/', @competitionname) <> 0 THEN 0
		ELSE 1
	END
)
END