Select 5-3 as Fark,
		5+3 as Toplam,
		3*5 as Carpim,
		5/3 as Bolum

Select 'Bugun gunlerden Pazartesi'

Select ASCII('A') -- Ascii kodunu verir
Select char(65)-- Ascii Kodunu verecektir
-- Charindex kullanimi 
-- aliyilmaz@gmail.com burada @ isareti kacinci siradadir



select CHARINDEX('@','aliyilmaz@gmail.com')
--Degisken tanimlamalari Declare komutu ile olur.
-- Degiskenler @ isareti ile baslamak zorundadir.
-- degisken isminden sonra tipi belirtilmelidir
-- ornek
declare @mail as varchar(50)
set @mail = 'aliyilmaz@gmail.com'
select CHARINDEX('@',@mail) 

Select left(@mail,3),
		RIGHT(@mail,3),
		len(@mail) Uzunluk,
		LOWER('ALİYILMAZ@GMAIL.COM'),
		UPPER(@mail) 

		declare @yazi varchar(50)
		select @yazi='    uskudar    '
		select LTRIM(@yazi)
		Select RTRIM(@yazi)
		select LTRIM(RTRIM(@yazi))

		--Replace 
		Select replace('Birbirbirilerine','bir','iki')
		--substring:verilen ifade icerisind 
		-- baslangic indexten baslayarak ,bitise kadar olan 
		-- degeri verir
		Select substring('aliyilmaz@gmail.com',11,5)
		--11'den sonraki butun karakterleri almak icin
		Select substring('aliyilmaz@gmail.com',11,len('aliyilmaz@gmail.com')-10)
		-- @isaretinden sonrakini almak istersem
		declare @str varchar(50)
		set @str = 'aliyilmaz@gmail.com'
		Select 
		substring(@str,
					charindex('@',@str),--@saretinin kacinci sirada oldugunu verir
					len(@str)-(charindex('@',@str)-1))
					--uzunlugu verir
		-- Reverse : Tersine cevirir
		Select REVERSE('ali veli')
		-- space(x) 
		Select 'ali'+ space(3) + 'veli'

		-- Replicate :Tekrarlama
		Select REPLICATE('ali',3)