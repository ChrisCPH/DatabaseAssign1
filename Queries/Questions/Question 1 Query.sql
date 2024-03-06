USE [Assign 1]
SELECT CityName, TotalEmissions, Year
FROM City
LEFT JOIN Emissions
ON City.OrganisationName = Emissions.OrganisationName
WHERE City.OrganisationName = 'City of Paris'
AND Year = '2016';