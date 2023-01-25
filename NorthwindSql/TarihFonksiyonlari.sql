--Tarih Fonksiyonlari
--DatePart Kullanimi
--Select 2*2
--Select GETDATE()
Select * 
from Orders
Where Datepart(year,OrderDate)=1996
and DatePart(month,OrderDate)= 11
and datepart(day,OrderDate)>15
-- Yilin kacinci haftasi bilgisi
Select FirstName,
		LastName ,
		BirthDate,
		DATEPART(week,BirthDate)
from Employees

--DateDiff kullanimi: Iki tarih arasinki farki alir
--Kullanimi Datediff(interval,BaslangiTarihi,BitisTarihi)
-- Calisanlarin yaslarini bulalalim

Select FirstName,
		LastName, 
		Datediff(year,BirthDate,GetDate())
from Employees
where Datediff(year,BirthDate,GetDate()) >70

Select  Datepart(hour,getDate()) Saat,
Datepart(MINUTE,getDate()) dakika,
Datepart(second,getDate()) saniye,
 Datepart(MILLISECOND,getDate()) milisecond,
 Datepart(MICROSECOND,getDate()) microsecond
