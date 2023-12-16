2.SELECT ProductName, Price
  FROM Products
  WHERE Price >= 20 AND Price <= 150

3.SELECT Country
  FROM Suppliers
  WHERE Country != 'USA'

4.SELECT *
  FROM Shippers
  WHERE ShipperID = 1

5.SELECT ContactName
  FROM Customers
  WHERE Country != 'France' AND Country != 'USA'

6.SELECT Country, City, Address
  FROM Suppliers
  WHERE Country != 'Japan' AND Country != 'Brazil'
