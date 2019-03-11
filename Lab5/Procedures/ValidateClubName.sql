USE [Soccer stats]
GO

CREATE OR ALTER FUNCTION ValidateClubName (@clubname VARCHAR(25))
RETURNS bit
AS
BEGIN
RETURN
(
SELECT 
	CASE
		WHEN @clubname is NULL THEN 0
		WHEN charindex(';', @clubname) <> 0 OR
			 charindex(':', @clubname) <> 0 OR
			 charindex('/', @clubname) <> 0 THEN 0
		ELSE 1
	END
)
END