SELECT
s.CompanyName AS [Tedarikçi Şirket],
AVg(p.UnitPrice) AS [Ortalama Fİyat],
COUNT(p.ProductID) AS [Ürün Sayısı]
FROM Suppliers s
    JOIN Products p ON s.SupplierID=p.SupplierID
GROUP BY s.CompanyName
HAVING COUNT(p.ProductID )>10
