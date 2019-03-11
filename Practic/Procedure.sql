USE Practic
GO

ALTER PROCEDURE upE @BName VARCHAR(50), @EName VARCHAR(50), @Dof date, @Apm money
AS
BEGIN
	DECLARE @BID int = (SELECT BID FROM Buildings WHERE BName = @BName),
			@EID int = (SELECT EID FROM Employees WHERE EName = @EName)

	IF EXISTS (SELECT * FROM EmployeesBuildings WHERE BID = @BID AND EID = @EID)
		UPDATE EmployeesBuildings
		SET FinalDate = @Dof, AmountPerMonth = @Apm
		WHERE BID = @BID AND EID = @EID
	ELSE 
		INSERT EmployeesBuildings(EBID, EID, BID, FinalDate, AmountPerMonth) VALUES (100, @EID, @BID, @Dof, @Apm)
END

GO
EXEC upE "Eifel Tower", "Eric", "2017-10-10", "30"

GO
EXEC upE "Colosseum", "Eric", "2010-10-10", "25"

Select *
From EmployeesBuildings

