-- Tablolari Sorgulamak icin Select komutu kullanilir
-- Select <KolonAdlari> from  <TabloAdi> 
--Select * from Customers
-- Kolon Secimli Sorgu
Select CompanyName,ContactName,Country,City 
from CUSTOMERS
-- Kolonlara Farkli isim verme
Select CompanyName as FirmaAdi,
		ContactName as KontaktKisi,
		Country as Ulke,
		City Sehir
from CUSTOMERS
-- 2. Yol
Select FirmaAdi=CompanyName ,
		[Baglantili Kisi]=ContactName,
		Ulke=Country ,
		Sehir=City 
from Customers

-- Tekil Kayitlari almak icin Distinct kelimesi kullanilir
Select distinct Country 
From Customers

Select Distinct City,FirstName from Employees
-- Kolon birlestirme

Select FirstName,LastName from Employees
Select (TitleOfCourtesy + ' ' +FirstName + ' ' +LastName) [Ad Soyad] 
from Employees


-- Verileri Filtreleme
-- Bunun icin where yan cumlecigi kullanilir
-- Londradaki musterilerim 
Select * from Customers
Where City='London'
-- Londradaki musterilerim den 
--fax numarasi olanlar
Select * from Customers
Where City='London' and fax is not null

-- Fax numarasi olmayan musterilerim 
Select * from Customers
Where Fax is null

-- Tarih fonksiyonlari

Select * from Employees 
Order by BirthDate

Select * from Employees 
Where year(BirthDate) >= 1960
Order by BirthDate

Select * from Orders
Where year(OrderDate)= 1996 
and MONTH(OrderDate)=12
order by OrderDate




