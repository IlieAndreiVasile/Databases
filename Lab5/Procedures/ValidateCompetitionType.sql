USE [Soccer stats]
GO

CREATE OR ALTER FUNCTION ValidateCompetitionType (@competitiontype VARCHAR(25))
RETURNS bit
AS
BEGIN
RETURN
(
SELECT 
	CASE
		WHEN @competitiontype is NULL THEN 0
		WHEN @competitiontype NOT LIKE 'National' THEN 0
		WHEN @competitiontype NOT LIKE 'International' THEN 0
		ELSE 1
	END
)
END