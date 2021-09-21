SELECT OrderDate, ProductName, Quantity, Price FROM Orders
LEFT JOIN OrderDetails
ON OrderDetails.OrderID = Orders.OrderID
LEFT JOIN Products
ON OrderDetails.ProductID = Products.ProductID




CREATE TABLE ProductOrders AS
SELECT OrderDate, ProductName, Quantity, Price FROM Orders
LEFT JOIN OrderDetails
ON OrderDetails.OrderID = Orders.OrderID
LEFT JOIN Products
ON OrderDetails.ProductID = Products.ProductID



#Multiplikation 
SELECT OrderDate, ProductName, Quantity, Price, Quantity * Price AS Total FROM Orders
LEFT JOIN OrderDetails
ON OrderDetails.OrderID = Orders.OrderID
LEFT JOIN Products
ON OrderDetails.ProductID = Products.ProductID


# Jahresabschluss
SELECT Count(Quantity * Price) AS Orders, SUM(Quantity * Price) AS Total, AVG(Quantity * Price) AS Average FROM Orders
LEFT JOIN OrderDetails
ON OrderDetails.OrderID = Orders.OrderID
LEFT JOIN Products
ON OrderDetails.ProductID = Products.ProductID
WHERE OrderDate LIKE "1996-%"

