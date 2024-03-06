USE [Assign 1]
SELECT CityName, Assessment, YearOfPublication
FROM City
LEFT JOIN Assessments
ON City.OrganisationName = Assessments.OrganisationName
WHERE City.OrganisationName = 'City of Rome';