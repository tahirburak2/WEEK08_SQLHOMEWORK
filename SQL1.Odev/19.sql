SELECT
c.Country AS [Ülke],
SUM(od.Quantity*od.UnitPrice*(1-od.Discount)) AS [toplam tutar]
FROM Customers c 
JOIN Orders o ON o.CustomerID=c.CustomerID
JOIN OrderDetails od ON od.OrderID=o.OrderID
group BY c.Country