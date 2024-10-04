SELECT 
s.CompanyName AS [Şirket Adı],
COUNT(o.ShipVia) AS [Siparis Sayısı]
FROM Orders o 
JOIN Shippers s ON s.ShipperID=o.ShipVia
GROUP BY s.CompanyName
