SELECT 
p.ProductName AS [Ürünler],
c.CategoryName AS [Kategoriler]
FROM Products p 
JOIN Categories c ON p.CategoryID=c.CategoryID
ORDER BY Kategoriler