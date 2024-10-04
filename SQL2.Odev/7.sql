SELECT top 1
YEAR(o.OrderDate) AS [YIL],
MONTH(o.OrderDate) AS [AY],
SUM(od.Quantity*od.UnitPrice) AS [ciro]
FROM orders o 
    JOIN OrderDetails od ON od.OrderID=o.OrderID
WHERE YEAR(o.OrderDate)=1997
GROUP BY YEAR(o.OrderDate),MONTH(o.OrderDate)
ORDER BY SUM(od.Quantity*od.UnitPrice) DESC