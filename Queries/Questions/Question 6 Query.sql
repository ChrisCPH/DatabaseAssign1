USE [Assign 1]
SELECT DISTINCT Emissions.OrganisationName, TotalEmissions, ChangeFromLastYear, PercentTargetReduction, Emissions.Year as EmissionYear
FROM Emissions
LEFT JOIN Reductions
ON Emissions.OrganisationName = Reductions.OrganisationName
WHERE Emissions.OrganisationName = 'City of Paris';