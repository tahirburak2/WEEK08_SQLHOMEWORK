SELECT top 5
c.ContactName AS [Müşteri adı],
COUNT(o.OrderID) AS [sipariş sayısı]
FROM Orders o
JOIN Customers c ON c.CustomerID=o.CustomerID
GROUP BY c.ContactName
ORDER BY  [sipariş sayısı] ASC

