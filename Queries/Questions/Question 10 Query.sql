USE [Assign 1]
SELECT RegionName, SUM(CAST(TotalEmissions as float)) as TotalEmissions
FROM Emissions
LEFT JOIN City
ON Emissions.OrganisationName = City.OrganisationName
LEFT JOIN Country
ON City.CountryName = Country.CountryName
GROUP BY RegionName;