SELECT 
Country AS [Ülke],
COUNT(CustomerID) AS [Müşteri Sayısı]
FROM Customers
GROUP BY Country
order BY [Müşteri Sayısı] desc


