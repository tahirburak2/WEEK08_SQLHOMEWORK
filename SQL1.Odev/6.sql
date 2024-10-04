SELECT 
c.CategoryName AS [Kategori],
COUNT(p.ProductID) AS [Ürün Sayısı]
FROM Categories c JOIN Products p ON c.CategoryID=p.CategoryID 
GROUP BY c.CategoryName 