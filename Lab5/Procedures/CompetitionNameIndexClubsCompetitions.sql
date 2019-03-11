USE [Soccer stats]
GO

IF EXISTS (SELECT name FROM sys.indexes WHERE name = N'N_idx_CompetitionName')
	DROP INDEX N_idx_CompetitionName ON ClubsCompetitions
GO

CREATE NONCLUSTERED INDEX N_idx_CompetitionName ON ClubsCompetitions (CompetitionName)
GO