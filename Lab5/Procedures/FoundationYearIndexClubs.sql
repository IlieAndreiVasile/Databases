USE [Soccer stats]
GO

IF EXISTS (SELECT name FROM sys.indexes WHERE name = N'N_idx_FoundationYear')
	DROP INDEX N_idx_FoundationYear ON Clubs
GO

CREATE NONCLUSTERED INDEX N_idx_FoundationYear ON Clubs (FoundationYear)
GO

select *
from Clubs
order by FoundationYear