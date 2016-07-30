USE AdventureWorks2012
GO

ALTER PROC dbo.uspGetAddress @City nvarchar(30), @AddressLine1 nvarchar(60)
AS

SELECT * 
FROM Person.Address
WHERE City LIKE @City + '%'
AND AddressLine1 LIKE @AddressLine1 + '%'
GO