
--Task 1
SELECT *
FROM Orders
    ORDER BY OrderDate Desc
    LIMIT 1,1

--Task 2
SELECT *
FROM Orders
    ORDER BY OrderDate Asc
    LIMIT 5

--Task 3
SELECT Phone
FROM Suppliers
    WHERE Country NOT IN ('UK', 'Brazil')

--Task 4
SELECT *
FROM Products
	WHERE CategoryID IN ('4', '5')
 		AND Price <= 250

--Task 5
-- Проекция позволяет вытаскивать информацию из заданной (в условиях проекции) таблицы (коллекции) и получить её в виде новой таблицы
