USE [Assign 1]
SELECT DISTINCT CityName, TotalEmissions, Population, PopulationYear
FROM City
INNER JOIN Population
ON City.OrganisationName = Population.OrganisationName
INNER JOIN Emissions
ON City.OrganisationName = Emissions.OrganisationName
WHERE City.OrganisationName = 'City of Paris'
AND Year = '2016';