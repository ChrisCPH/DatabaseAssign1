USE [Assign 1]
SELECT CityName, PercentTargetReduction, TargetDate, Year
FROM City
LEFT JOIN Reductions
ON City.OrganisationName = Reductions.OrganisationName
WHERE City.OrganisationName = 'City of Paris'
AND Year = '2016';