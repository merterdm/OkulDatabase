-- Aggregate Fonksiyonlar
-- Toplam fonksiyonlari ve 
-- Gruplama fonksiyonlari

-- Count  fonksiyonu
-- Sorgudaki kayit sayisini verir
Select * from Employees
-- Employee tablosundaki kayit sayisi
Select count(*) 
from Employees
-- Ingiltereli olan personel listesi
Select count(*) 
from Employees
where Country = 'UK'
-- kayit sayisi
select count(EmployeeId) from Employees
--count fonksiyonu null degerleri saymaz
select count(region) from Employees
select count(distinct city) from Employees


-- Sum : Toplama fonksiyonu
-- Urunlerin Toplam fiyati
select sum(Unitprice) from Products
-- Urunlerin Fiyat Ortalamasi
select sum(Unitprice)/count(ProductId) from Products
-- avarage : Ortalama
Select avg(UnitPrice) from Products
--Calisanlarin yaş ortalamasi
select avg(datediff(year,BirthDate,getDate())) 
from Employees
-- null olanlar işleme dahil edilmez
select avg(firstName) from Employees

-- Max : maximum degeri verir
Select max(UnitPrice) from Products
Select min(UnitPrice) from Products
-- Max ve Min sayisal olmayan alanlarada uygulanabilir
select max(FirstName) from Employees
select min(FirstName) from Employees
Select * from Employees
Order by FirstName
