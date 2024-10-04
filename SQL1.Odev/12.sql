SELECT 
o.OrderID,
ROUND(SUM(od.Quantity*od.UnitPrice*(1-od.Discount)),4) AS [Toplam Tutar]
FROM orders o 
JOIN OrderDetails od ON o.OrderID=od.OrderID
GROUP BY o.OrderID
