USE [Assign 1]
SELECT TotalEmissions, GasesIncluded, Emissions.Year, PercentTargetReduction, TargetDate, Assessment, Population, CityName, RegionName
FROM Emissions
JOIN Reductions
ON Emissions.OrganisationName = Reductions.OrganisationName
JOIN Assessments
ON Reductions.OrganisationName = Assessments.OrganisationName
JOIN City
ON Assessments.OrganisationName = City.OrganisationName
JOIN Population
ON City.OrganisationName = Population.OrganisationName
JOIN Country
ON City.CountryName = Country.CountryName