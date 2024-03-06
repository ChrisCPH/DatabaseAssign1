USE [Assign 1]
SELECT e1.OrganisationName, e1.TotalEmissions as TotalEmissions2016, e2.TotalEmissions as TotalEmissions2017
FROM Emissions e1
JOIN Emissions e2
ON e1.OrganisationName = e2.OrganisationName
WHERE e1.Year = '2016'
AND e2.Year = '2017'
AND CAST(e1.TotalEmissions AS float) < CAST(e2.TotalEmissions AS float);