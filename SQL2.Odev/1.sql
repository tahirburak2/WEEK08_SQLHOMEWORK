SELECT 
c.ContactName AS [Müşteri]
FROM Customers c
JOIN Orders o ON c.CustomerID=o.CustomerID
WHERE o.OrderID =  NULL 