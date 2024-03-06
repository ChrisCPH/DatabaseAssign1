USE [Assign 1]
BEGIN TRAN UpdateTran

UPDATE Country SET CountryID = '12345',  CountryLocation = '(1234,123)', RegionName = 'Europe' WHERE CountryID = '1'
UPDATE City SET CityName = 'TestCity', OrganisationID = '12345', CityLocation = '(123,1234)', C40City = 'true', GCoMCity = 'true' WHERE OrganisationID = '929965'
UPDATE Reductions SET ReductionID = '12345', Year = '2024', PercentTargetReduction = '5', TargetDate = '2030', Sector = 'Total', Baseline = '100000', BaselineYear = '2022', Comments = 'Test comment' WHERE ReductionID = '1'
UPDATE Population SET PopulationID = '12345', Population = '54321', PopulationYear = '2024' WHERE PopulationID = '1'
UPDATE Emissions SET EmissionID = '12345',  Year = '2024', TotalEmissions = '200000', GasesIncluded = 'CO2 SF6 N2O', ChangeFromLastYear = 'Decreased', ReasonForChange = 'Assessment plan', Scope1 = '120000', Scope2 = '80000', Comments = 'No comment', GDP = '12', GDPCurrency = 'IRR', YearOfGDP = '2024', GDPSource = 'Dude trust me' WHERE EmissionID = '1'
UPDATE Assessments SET AssessmentID = '12345', Assessment = 'www.papertoilet.com', YearOfPublication = '2023', BoundaryOfAssessment = 'Everything', Access = 'public' WHERE AssessmentID = '1'

ROLLBACK TRAN UpdateTran;