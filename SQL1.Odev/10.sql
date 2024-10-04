SELECT 
CONCAT(e.FirstName,' ',e.LastName) AS [FullName],
COUNT(o.OrderID) AS [Sipariş Sayısı]
FROM Employees e 
JOIN Orders o ON e.EmployeeID=o.EmployeeID
GROUP BY e.FirstName,e.LastName
