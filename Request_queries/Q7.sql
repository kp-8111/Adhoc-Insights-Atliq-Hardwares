with cte1 as
(
	select 
		monthname(s.date) as Month_,
		s.fiscal_year as year_,
		s.sold_quantity * g.gross_price as Gross_sales_Amount 
	from fact_sales_monthly s
	join fact_gross_price g
		on s.product_code = g.product_code and s.fiscal_year = g.fiscal_year
	join dim_customer c 
		on c.customer_code = s.customer_code
	where c.customer = "Atliq Exclusive"
)
select
	* 
from cte1 
group by Month_ ,year_;

SET SESSION sql_mode = '';