SELECT
c.ContactName AS [Müşteri],
o.OrderDate AS [tarih],
COUNT(o.OrderID) AS [Verilen sipariş sayısı]
FROM Orders o 
    JOIN Customers c ON o.CustomerID=c.CustomerID
GROUP by c.ContactName,o.OrderDate 
HAVING COUNT(o.OrderID)>1