/*
Sql Parametreleri ve degisken tanimlamalari 
mutlaka @ isareti ile baslarlar. 
DEgisken tanimlamalarinda mutlaka tip 
bildirimi gereklidir.
*/
--CREATE PROCEDURE [dbo].[ikiTarihArasiSiparisler]
--	@Baslangictarihi DateTime,
--	@BitisTarihi DateTime
--AS
--Begin
	
--	Select * 
--	from Orders 
--	Where OrderDate between @Baslangictarihi and @BitisTarihi
	
--	RETURN 0
--End

--Create procedure dbo.UlkeSiparisleri
--@ulke nvarchar(15)
--as
--Begin
--	Select * from Orders 
--	Where ShipCountry =@ulke

--End
alter Procedure Musterilerim
@sehir nvarchar(15)
as
Begin
 Select * from Customers where city=@sehir

End