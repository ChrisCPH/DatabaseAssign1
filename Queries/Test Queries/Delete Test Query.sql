USE [Assign 1]
BEGIN TRAN DeleteTran

ALTER TABLE City NOCHECK CONSTRAINT FK_City_Country
ALTER TABLE Population NOCHECK CONSTRAINT FK_Population_City
ALTER TABLE Emissions NOCHECK CONSTRAINT FK_Emissions_City
ALTER TABLE Assessments NOCHECK CONSTRAINT FK_Assessments_City
ALTER TABLE Reductions NOCHECK CONSTRAINT FK_Reductions_City

DELETE FROM Country WHERE CountryID = '1'
DELETE FROM City WHERE OrganisationID = '929965'
DELETE FROM Assessments WHERE AssessmentID = '1'
DELETE FROM Emissions WHERE EmissionID = '1'
DELETE FROM Population WHERE PopulationID = '1'
DELETE FROM Reductions WHERE ReductionID = '1'

ALTER TABLE City CHECK CONSTRAINT FK_City_Country
ALTER TABLE Population CHECK CONSTRAINT FK_Population_City
ALTER TABLE Emissions CHECK CONSTRAINT FK_Emissions_City
ALTER TABLE Assessments CHECK CONSTRAINT FK_Assessments_City
ALTER TABLE Reductions CHECK CONSTRAINT FK_Reductions_City


ROLLBACK TRAN DeleteTran;

