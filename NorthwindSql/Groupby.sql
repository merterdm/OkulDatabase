--Group by Kullanimi
-- Hangi ulkede kac adet musterim var
-- Yada Ulkelere göre musteri dagilimi
Select Country,count(Country) 
from Customers
Group by Country
Order by 2 desc

-- Musterilerin verdigi siparis sayisi
Select CustomerID,Count(*) 
from Orders
GROUP BY CustomerID

-- Calisanlarin aldigi siparis sayisi
Select EmployeeID,Count(*) 
from Orders
GROUP BY EmployeeID

-- Urunlerin Kategorilere gore dagilimi
Select CategoryID,count(*) 
from Products
Where UnitPrice>=20
Group by CategoryID

-- Her siparisteki toplam urun sayisi
Select top 1 * from Orders
Select top 10 * from [Order Details]

Select OrderID,count(*) 
from [Order Details]
Group by OrderID

-- Her bir siparisin cirosu nedir ?
-- 10248,125$
--Having Kullanimi. 
-- Group by sonucunda gelen veriler uzerinde 
-- filtreleme yapmak icin kullanilir
Select OrderId,sum([UnitPrice]*[Quantity]) as Ciro 
from [Order Details]
Group by OrderID
having sum([UnitPrice]*[Quantity]) <10000
Order by Ciro desc


Select * from [Order Details]
where OrderID=10865
Select * from Products Where ProductID = 38

