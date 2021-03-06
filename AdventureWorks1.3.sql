/*
--this procedure gets a list of addresses based on the city value that is passed
--this procedure is used by the HR system
*/
CREATE PROC dbo.uspGetAddress @City nvarchar(30)
AS
SELECT *
FROM Person.Address
WHERE City = @City --the @City parameter value will narrow the search criteria
GO