USE Practic
GO

CREATE TABLE Cities
	(
	CID int primary key,
	CName Varchar(50),
	EYear int,
	NrPeople int
	)

CREATE TABLE Architects
(
AID int primary key,
AName VARCHAR(50),
ASurname VARCHAR(50),
Birthdate date,
NrDesignedBuildings int
)

CREATE TABLE Buildings
	(
	BID int primary key,
	BName VARCHAR(50),
	BWeight int,
	BHeight int,
	Duration int,
	CID int foreign key references Cities(CID),
	AID int foreign key references Architects(AID)
	)

CREATE TABLE Employees
	(
	EID int primary key,
	EName VARCHAR(50),
	Experience int,
	NrHoursPerDay int,
	)

CREATE TABLE EmployeesBuildings
	(
	EBID int primary key,
	EID int foreign key references Employees(EID),
	BID int foreign key references Buildings(BID),
	FinalDate date,
	AmountPerMonth money
	)