SELECT 
YEAR(o.OrderDate) AS [Yıl],
MONTH(o.OrderDate) AS [Ay],
SUM(od.Quantity*od.UnitPrice) AS [Sipariş Tutarı]
FROM Orders o 
    JOIN OrderDetails od ON od.OrderID=o.OrderID
group BY YEAR(o.OrderDate),MONTH(o.OrderDate)
ORDER BY Yıl,Ay