--exec [dbo].[KargocularinSiparisleri] '01.01.1997'  

-- Alinan siparis sayisinin yillara gore dagilimi ?
-- Yillar Satirlarda Gorunsun , Aylar sutunlarda gorunsun
--Select year(OrderDate) Yil,DatePart(month,OrderDate) Ay,count(*) Adet
--from Orders
--Group by year(OrderDate),DatePart(month,OrderDate)
--order by 1,2

--Create Procedure YillaraGorePivotSatislar
--as
--Begin
-- Yil  1	2	3	4	5	6	7	8	9	10	11	12  
--1996	22	30	45
--1997  
--1998
--Select datepart(month,getdate())
--CREATE TABLE #SatisPivot (
--		Yil int,
--		Ocak int,
--		Subat int,
--		Mart int,
--		Nisan int,
--		Mayis int,
--		Haziran int,
--		Temmuz int
--);

--insert into #SatisPivot (Yil) values (1996), (1997),(1998)
--delete from #satisPivot
--Select * from #SatisPivot
declare @yil int,@ay int ,@Adet int

DECLARE satislar CURSOR FOR 
Select year(OrderDate) Yil,DatePart(month,OrderDate) Ay,count(*) Adet
from Orders
Group by year(OrderDate),DatePart(month,OrderDate)
order by 1,2


-- Tanimlanan Cursur acar
open satislar 
FETCH NEXT FROM satislar into @yil,@ay,@adet
while  @@FETCH_STATUS = 0  
Begin
--select  @yil ,@ay ,@adet

 Select  case @ay when 1 then 'Ocak'
		 when  2 then 'Subat'	
		 		 when  3 then 'MArt'	
				 		 when  4 then 'Nisan'
						 		 when  5 then 'Mayis'	
								 end

FETCH NEXT FROM satislar into @yil,@ay,@adet
end
close satislar
deallocate satislar

