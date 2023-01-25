-- Like Kullanimi
select * from Customers
where ContactTitle = 'Owner'
--2. Yol
select * from Customers
where ContactTitle like 'Owner'

--Contact Name 'i a ile baslayan musteriler
select * from Customers
where ContactName like 'a%'
--Contact Name 'i a ile bitenler 
select * from Customers
where ContactName like '%a'

--ContactName icerisinde e harfi olanlar
select * from Customers
where ContactName like '%e%'

--ContactName ikinci harfi a olanlar
select * from Customers
where ContactName like '_a%'
--ContactName ikinci harfi a olanlar 
-- ve 4. harfi r olanlar
select * from Customers
where ContactName like '_a_r%'

--ContactName alaninda 2. harfi
-- a yada e olanlar
-- 1. Yol
select * from Customers
where ContactName like '_a%'
or ContactName like '_e%'

-- 2.Yol 
select * from Customers
where ContactName like '_[ae]%'
--ContactName icerisinde A yada R olanlar
select * from Customers
where ContactName like '%[ar]%'
--ContactName ilk farfi 
-- alfabetik B ile F arasinda olanlar
select * from Customers
where ContactName like '[b-f]%'
Order by ContactName

--ContactName m ile baslamayanlar
-- 1. Yol
select * from Customers
where ContactName not like 'm%'
Order by ContactName

-- 2. Yol
select * from Customers
where ContactName like '[^m]%'
Order by ContactName

--ContactName m ile bitmeyenler
-- 1. Yol
select * from Customers
where ContactName not like '%m'
Order by ContactName
--2. Yol
select * from Customers
where ContactName like '%[^m]'
Order by ContactName

-- Top Kullanimi 
-- ilk 10 kaydi getirir
select top 10 * from Customers
where ContactName like '%[^m]'
Order by ContactName

-- ilk %10 kaydi getirir
select top 10 percent  * from Customers
where ContactName like '%[^m]'
Order by ContactName
