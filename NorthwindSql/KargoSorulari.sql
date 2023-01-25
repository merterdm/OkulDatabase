--Soru 1
--Kargo firmalarinin tasidigi 
--urun adetleri yillara göre
--dagilimi
--exec kargoSorgular KargoID,Ulke 
--Sonuc :
--Federal Shipping 1996 ,USA ,343
--Soru 2
--exec kargoSorgular KargoID,yil
--Federal Shipping 1996 ,USA ,343
--Federal Shipping 1996 ,UK ,243 
--Federal Shipping 1996 ,Germany ,343


create procedure KargoTasimaListesi2 @kargoId int,@yil int
as
select s.CompanyName Kargo, o.ShipCountry Ulke,sum(dt.Quantity) Adet
from Shippers s 
join Orders o on o.ShipVia=s.ShipperID
join [Order Details] dt on dt.OrderID=o.OrderID
where s.ShipperID =@kargoId and year(o.Orderdate) =@yil
Group by s.CompanyName ,year(o.OrderDate),o.ShipCountry 
Order by 2

exec KargoTasimaListesi 1,'USA'
exec KargoTasimaListesi2 1,1997

