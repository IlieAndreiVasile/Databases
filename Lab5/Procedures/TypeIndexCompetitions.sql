USE [Soccer stats]
GO

IF EXISTS (SELECT name FROM sys.indexes WHERE name = N'N_idx_Type')
	DROP INDEX N_idx_Type ON Competitions
GO

CREATE NONCLUSTERED INDEX N_idx_Type ON Competitions (Type)
GO