USE [Assign 1]
SELECT DISTINCT CityName, TotalEmissions, Baseline, BaselineYear
FROM Emissions
INNER JOIN City
ON Emissions.OrganisationName = City.OrganisationName
INNER JOIN Reductions
ON Emissions.OrganisationName = Reductions.OrganisationName
WHERE City.OrganisationName = 'City of Paris'
AND Emissions.Year = '2016';