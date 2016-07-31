/*
Database and SQL Course
Item 28 of 36
Corey DeRosa
*/
--Design a stored procedure that has at least two joins and two parameters


USE AdventureWorks2012
GO

CREATE PROC GetPersonEmailPhone --when executing user must enter value for all parameters.  If you only want to search using one parameter then use '%' for the parameter in which you are not searching
	@FName nvarchar(50), --if you dont want to search using FirstName then type '%' in EXEC query in first spot
	@LName nvarchar(50), --if you dont want to search using LastName then type '%' in EXEC query in second spot
	@Email nvarchar(500),--if you dont want to search using Email then type '%' in EXEC query in third
	@PPhone varchar(15)--if you dont want to search using PhoneNumber then type '%' in EXEC query in 4th spot
AS
SELECT 
	PP.FirstName, 
	PP.LastName, 
	PE.EmailAddress,
	PPH.PhoneNumber
FROM Person.Person AS PP 
INNER JOIN Person.EmailAddress AS PE ON PP.BusinessEntityID = PE.BusinessEntityID
INNER JOIN Person.PersonPhone AS PPH ON PP.BusinessEntityID = PPH.BusinessEntityID
WHERE PP.FirstName LIKE @FName
AND PP.LastName LIKE @LName
AND PE.EmailAddress LIKE @Email
AND PPH.PhoneNumber LIKE @PPhone
GO
--example EXEC GetPersonEmailPhone, Bob, '%', '%', '%5%'..this will search for all Bob's with 5 somewhere in phone number



GetPersonEmailPhone 
	Bob,
	'%',
	'%',
	'%5%'



