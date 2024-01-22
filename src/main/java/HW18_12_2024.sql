#1
SELECT
	ProductName,
    Price * 0.995 AS LowPrice,
FROM Products;

#2
SELECT
	Orders.OrderID,
    Customers.CustomerName,
    Customers.Country
FROM Customers

	JOIN Orders ON Customers.CustomerID = Orders.CustomerID
WHERE
	NOT Customers.Country = 'France'

#3
SELECT
    Products.ProductName,
    Products.Price AS 'Price(USD)'
FROM OrderDetails
JOIN Orders ON OrderDetails.OrderID = Orders.OrderID
JOIN Products ON Products.ProductID = OrderDetails.ProductID
ORDER BY Products.Price DESC
LIMIT 1

#4
SELECT
	Suppliers.Country
FROM Products
JOIN Categories ON Categories.CategoryID = Products.CategoryID
JOIN Suppliers ON Suppliers.SupplierID = Products.SupplierID
WHERE
	Categories.CategoryName LIKE 'Seafood'

#5
SELECT  *
FROM Products
JOIN Categories ON Categories.CategoryID = Products.CategoryID
JOIN Suppliers ON Suppliers.SupplierID = Products.SupplierID
WHERE
	Categories.	CategoryName = 'Beverages'
    AND
    Suppliers.Country = 'USA'
ORDER BY Products.Price DESC
LIMIT 2
