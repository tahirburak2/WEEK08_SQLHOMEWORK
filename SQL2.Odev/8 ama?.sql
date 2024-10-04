select o.EmployeeID,e.FirstName, avg(DATEDIFF(day,o.ShippedDate,o.RequiredDate)) as a from Orders o
join Employees e on o.EmployeeID=e.EmployeeID

group by o.EmployeeID,e.FirstName
having (select avg(DATEDIFF(day,o.ShippedDate,o.RequiredDate)) from Orders o )<avg(DATEDIFF(day,o.ShippedDate,o.RequiredDate))