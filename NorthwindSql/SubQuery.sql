-- SubQuery 
-- iç içe sorgular

-- Urunler tablosunda fiyati ortalamanin 
-- uzerinde olan urunlerin listesi
-- Uzun Yol
declare @ortalamaFiyat money 
Select @ortalamaFiyat = avg(UnitPrice) 
from Products

Select * from Products 
Where UnitPrice > @ortalamaFiyat

--Kisa yol
Select * from Products 
Where UnitPrice > (Select avg(UnitPrice) from Products)

--insert into Products (ProductName,
--						CategoryID,
--						SupplierID,
--						UnitPrice)
--values('Kola',1,1,5)

-- Hic siparis verilmemis urunler 
Select * from Products
Where ProductID not in(Select ProductID from [Order Details])

insert into Employees (FirstName,LastName)
values ('Ali','Yilmaz')

-- Siprais lmayan aclisianlarin listesi
Select * from Employees
Where not exists 
(Select EmployeeID 
from Orders 
where Orders.EmployeeID = Employees.EmployeeID)

Select ProductName,
(Select CategoryName from Categories as c where c.CategoryID=p.CategoryID) as CategoryName,
(Select CompanyName from Suppliers as s where s.SupplierID=p.SupplierID) as TedarikciAdi
from Products as p



