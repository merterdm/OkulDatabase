Select * from Categories
Select * from Products
-- Sub Query
Select ProductName,
(Select CategoryName from Categories as c where c.CategoryID=p.CategoryID) as CategoryName,
(Select CompanyName from Suppliers as s where s.SupplierID=p.SupplierID) as TedarikciAdi
from Products as p

--join li versiyonu 1. Adim
Select ProductName ,
Categories.CategoryName
from Products
inner join Categories on Categories.CategoryID = Products.CategoryID


--2. Adim
Select ProductName ,
Categories.CategoryName,
Suppliers.CompanyName
from Products
inner join Categories on Categories.CategoryID = Products.CategoryID
inner join Suppliers on Suppliers.SupplierID= Products.SupplierID

-- Table Alias kullanimi
Select ProductName ,
c.CategoryName,
s.CompanyName
from Products p
inner join Categories c on c.CategoryID = p.CategoryID
inner join Suppliers s on s.SupplierID= p.SupplierID

-- Hangi categoriden kac adet urunum var.
Select c.CategoryName,count(p.ProductID) Adet
from Categories c
inner join Products p on c.CategoryID=p.CategoryID
group by c.CategoryName
order by 2 desc

--SİPARİŞ SAYİSİ EN YÜKSEK İLK 5 MUSTERİ KİMLERDİR 
SELECT top 5 c.CompanyName,count(o.CustomerID) [Siparis Sayisi]
FROM Customers c
inner join Orders o on o.CustomerID=c.CustomerID
group by c.CompanyName
Order by 2 desc

-- Calisanlarin aldigi siparis sayisi 
Select (e.FirstName + ' ' + e.LastName) Adi,count(o.OrderID) Adet
from Employees e Left join Orders o on e.EmployeeID=o.EmployeeID
Group by (e.FirstName + ' ' + e.LastName)
Order by 2 desc

-- Calisanlarin Cirolari
Select (e.FirstName + ' ' + e.LastName) Adi,
Count(distinct o.OrderID) adet,
sum(dt.UnitPrice*dt.Quantity) [Ciro $]
from Employees e
inner join Orders o on e.EmployeeID=o.EmployeeID
inner join [Order Details] dt on dt.OrderID =o.OrderID
Group by (e.FirstName + ' ' + e.LastName)
Order by 2 desc
--Eski Yontem

Select Products.ProductName,Categories.CategoryName,Suppliers.CompanyName
from Products,Categories,Suppliers
where Products.CategoryID= Categories.CategoryID
and Products.SupplierID = Suppliers.SupplierID

-- Table Alias Kullanimli hali
Select p.ProductName,c.CategoryName,s.CompanyName
from Products p,Categories c,Suppliers s
where p.CategoryID= c.CategoryID
and p.SupplierID = s.SupplierID

-- Kategorilerin satis adetleri nedir ?

Select c.CategoryName,COUNT(*)
from Categories c 
inner join Products p on c.CategoryID=p.CategoryID
inner join [Order Details] dt on dt.ProductID = p.ProductID
inner join Orders o on o.OrderID = dt.OrderID
Where year(o.OrderDate) = 1996
group by c.CategoryName
Order by 2
--7 numarali categori ile saglamasini yapalim.
Select * from Categories
Select * from Products where CategoryID=7 --(51,28,14,7) numarali product'lar var.

Select count(*) 
from [Order Details] dt
inner join Orders o on dt.OrderID = o.OrderID
Where dt.ProductID in(51,28,14,7)
and year(o.OrderDate) = 1996

-- Çalışanlarin ülkelere göre siparis adetleri
Select (e.FirstName + ' ' + e.LastName) Adi, 
	    o.ShipCountry,
		count(*) Adet
from Employees e 
inner join Orders o on o.EmployeeID=e.EmployeeID
Group by (e.FirstName + ' ' + e.LastName), o.ShipCountry
order by 3 desc

Select * from [Order Details]


