 with cte1 as 
(
	SELECT 
		*,
		sum(sold_quantity) as total_sold_qty,
		case
			when Month in (9,10,11) then "QTR1"
			when Month in (12,1,2) then "QTR2"
			when Month in (3,4,5) then "QTR3"
			else "QTR4"
		end as qtr 
	FROM gdb023.fact_sales_monthly
	group by qtr
)
select
	qtr, 
	max(total_sold_qty) as max
from cte1
group by qtr
order by max desc 
