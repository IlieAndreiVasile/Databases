USE [Soccer stats]
GO

CREATE OR ALTER FUNCTION ValidateManagerName (@managername VARCHAR(50))
RETURNS bit
AS
BEGIN
RETURN
(
SELECT 
	CASE
		WHEN @managername is NULL THEN 0
		WHEN charindex(';', @managername) <> 0 OR
			 charindex(':', @managername) <> 0 OR
			 charindex('/', @managername) <> 0 THEN 0
		ELSE 1
	END
)
END