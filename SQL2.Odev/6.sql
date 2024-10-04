SELECT 
e.LastName AS [Çalışan],
e.Country AS [Sorumlu bölgesi],
SUM(od.Quantity)
FROM Employees e 
    JOIN Orders o ON e.EmployeeID=o.EmployeeID
        JOIN OrderDetails od ON o.OrderID=od.OrderID
            JOIN EmployeeTerritories et ON e.EmployeeID=et.EmployeeID
                JOIN Territories t ON et.TerritoryID=t.TerritoryID
GROUP BY e.Country,e.LastName