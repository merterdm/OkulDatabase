-- ================================================
-- Template generated from Template Explorer using:
-- Create Trigger (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- See additional Create Trigger templates for more
-- examples of different Trigger statements.
--
-- This block of comments will not be included in
-- the definition of the function.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
alter TRIGGER dbo.KullaniMeuleriEkle
   ON  Kullanicilar
   AFTER Insert
AS 
BEGIN
	declare @KullaniciId int ,@menuId int
    select @KullaniciId = i.Id from inserted i
	-- Cursor tanimlamasinin yapildigi yer
   declare menucursor cursor for 
   select Id from Menuler where isActive =1
  --Cursor acildigi yer
   open menucursor
   fetch next from menucursor into @menuId
   --Dongu ile donuyoruz
   while @@FETCH_STATUS =0
   Begin
		insert into KullaniciMenuleri (KullaniciId,MenuId,isActive) values (@KullaniciId,@menuId,1)
	 fetch next from menucursor into @menuId
   end
   --Cursor'i kapatiyoruz
   close menucursor
   -- Memoriden ucuruyoruz
   deallocate menucursor
END
GO
