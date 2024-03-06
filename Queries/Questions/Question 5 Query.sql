USE [Assign 1]
SELECT CityName, TotalEmissions, ChangeFromLastYear
FROM City
LEFT JOIN Emissions
ON City.OrganisationName = Emissions.OrganisationName
WHERE City.OrganisationName = 'City of Paris'
AND Year = '2016';