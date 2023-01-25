Select top 1 * from Orders
Select * from [Order Details] where OrderID=10248
-- Alinan siparis sayisinin yillara gore dagilimi ?
-- Yillar Satirlarda Gorunsun , Aylar sutunlarda gorunsun
Select year(OrderDate),DatePart(month,OrderDate) Ay,count(*) Adet
from Orders
Group by year(OrderDate),DatePart(month,OrderDate)
order by 1,2

