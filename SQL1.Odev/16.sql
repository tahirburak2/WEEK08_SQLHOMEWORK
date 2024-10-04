SELECT 
CONCAT(e.FirstName,' ',e.LastName) AS [FullName],
SUM(od.Quantity*od.UnitPrice*(1-od.Discount)) AS [Sipariş Tutarı]
FROM Orders o 
JOIN Employees e ON e.EmployeeID=o.EmployeeID
JOIN OrderDetails od ON od.OrderID=o.OrderID
GROUP BY e.FirstName,e.LastName