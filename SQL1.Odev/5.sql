SELECT 
c.CompanyName AS [Müşteri],
o.OrderDate
FROM Orders o JOIN Customers c ON o.CustomerID=c.CustomerID
WHERE Year(OrderDate)=1998