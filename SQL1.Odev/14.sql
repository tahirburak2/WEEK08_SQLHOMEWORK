SELECT
c.ContactName AS [Müşteriler],
COUNT(o.OrderID) AS [Sipariş sayısı]
FROM Customers c
    JOIN Orders o ON c.CustomerID=o.CustomerID
GROUP BY c.ContactName
