USE [Assign 1]
BEGIN TRAN InsertTran

INSERT INTO Country (CountryID, CountryName, CountryLocation, RegionName) VALUES ('12345','TestCountry','(1234,123)','Europe')
INSERT INTO City (CityName, OrganisationID, OrganisationName, CountryName, CityLocation, C40City, GCoMCity) VALUES ('TestCity', '12345','City of Test','TestCountry','(123,1234)','true','false')
INSERT INTO Reductions (ReductionID, OrganisationName, Year, PercentTargetReduction, TargetDate, Sector, Baseline, BaselineYear, Comments) VALUES ('12345','City of Test','2024','5','2030','Total','100000','2022','Test comment')
INSERT INTO Population (PopulationID, Population, PopulationYear, OrganisationName) VALUES ('12345','54321','2024','City of Test')
INSERT INTO Emissions (EmissionID, OrganisationName, Year, TotalEmissions, GasesIncluded, ChangeFromLastYear, ReasonForChange, Scope1, Scope2, Comments, GDP, GDPCurrency, YearOfGDP, GDPSource) VALUES ('12345','City of Test','2024','200000','CO2 SF6 N2O','Decreased','Assessment plan','120000','80000','No comment','12','IRR','2024','Dude trust me')
INSERT INTO Assessments (AssessmentID, OrganisationName, Assessment, YearOfPublication, BoundaryOfAssessment, Access) VALUES ('12345','City of Test','www.papertoilet.com','2023','Everything','public')

ROLLBACK TRAN InsertTran;