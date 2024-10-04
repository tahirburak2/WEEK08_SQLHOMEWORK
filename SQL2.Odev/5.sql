SELECT
cu.ContactName AS [Müşteri İsmi],
COUNT(DISTINCT o.OrderID) AS [Benzersiz ürün sayısı]
FROM Categories c 
    JOIN Products p ON c.CategoryID=p.CategoryID
        JOIN OrderDetails od ON p.ProductID=od.ProductID
            JOIN Orders o ON od.OrderID=o.OrderID
                JOIN Customers cu ON o.CustomerID=cu.CustomerID
GROUP BY cu.ContactName
HAVING COUNT(DISTINCT o.OrderID) = 3
