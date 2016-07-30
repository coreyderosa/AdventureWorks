USE AdventureWorks2012
GO

ALTER PROC dbo.uspGetAddress @City nvarchar(30)
AS

SELECT * 
FROM Person.Address
WHERE City LIKE @City + '%'
GO