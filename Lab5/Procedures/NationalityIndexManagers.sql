USE [Soccer stats]
GO

IF EXISTS (SELECT name FROM sys.indexes WHERE name = N'N_idx_Nationality')
	DROP INDEX N_idx_Nationality ON Managers
GO

CREATE NONCLUSTERED INDEX N_idx_Nationality ON Managers (Nationality)
GO