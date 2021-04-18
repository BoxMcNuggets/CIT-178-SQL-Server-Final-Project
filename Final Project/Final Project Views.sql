/* Final Project Views 

USE jamBusiness;
GO


CREATE VIEW VI_stock
AS
SELECT Stock.JamID, [description], OrderID, Quantity
FROM Stock
JOIN OrderDetails ON Stock.JamID = OrderDetails.JamID;
GO


CREATE VIEW VI_Location
AS
SELECT [Location].LocationID, [Name], CustomerID
FROM [Location]
JOIN ProductOrder ON [Location].LocationID = ProductOrder.LocationID
GO


CREATE VIEW VI_Limited_Planet
AS
SELECT [Planet].PlanetID, PlanetName, FName, LName
FROM Planet
JOIN Customers ON Planet.PlanetID = Customers.PlanetID
GO


CREATE VIEW VI_customer
AS
SELECT FName, LName, [Address], Email, PlanetName
FROM Customers
JOIN Planet ON Customers.PlanetID = Planet.PlanetID

SELECT * FROM VI_stock

USE jamBusiness;
GO 
ALTER VIEW VI_Location
AS
SELECT * FROM [Location]
WHERE [Name] IN ('Republic','Jedi Order')*/