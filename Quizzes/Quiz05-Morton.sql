use TSQLV4

with T as
(select od.productid, sum(od.qty) as sumqty
	year(o.orderdate) as yr, month (o.orderdate) as mth
	from sales.orderdetails od join sales.orders o
		on od.orderid = o.orderid
		group by productid, year(o.orderdate), month(o.orderdate))
select productid , DATEFROMPARTS (yr,mth,1) as monthyear
, sumqty as thismonth
, lag(sumqty) over (partition by productid
order by yr,mth) as lastmonth
, sumqty - lag(sumqty) over(partition by productid
order by yr,mth) as diff
, convert (decimal(10,2),100.0 * (sumqty - lag(sumqty) over (partition by productid
order by yr,mth) * 1.0) /
convert (decimal (10,2), (lag(sumqty) over (partition by productid
order by yr,mth) * 1.0))) as pcincdec
, sum(sumqty) over (partition by productid
order by yr,mth
rows between unbounded preceding and current row) as running
, convert (decimal(10,2), 100.0* sumqty / lag (sumqty) over (partition by productid
order by yr,mth)) as pctchange
, sum (sumqty) over (partition by productid) as totalperproduct
, convert(decimal(10,2), 100.0 * sumqty / sum(sumqty) over (partition by productid)
from T;