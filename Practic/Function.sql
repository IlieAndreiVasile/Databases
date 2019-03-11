USE Practic
GO

ALTER FUNCTION employeesWithowtBuildings()
RETURNS TABLE
AS
	RETURN SELECT E.EName
	FROM Employees E
	WHERE E.EID NOT IN(SELECT DISTINCT EID FROM EmployeesBuildings)
 		
GO
SELECT * FROM employeesWithowtBuildings()