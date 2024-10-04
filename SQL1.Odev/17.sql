SELECT 
c.CategoryName AS [Kategori],
AVG(p.UnitPrice) AS [Ortalama fiyatlar]
FROM Categories c 
JOIN Products p ON c.CategoryID=p.CategoryID
GROUP BY c.CategoryName