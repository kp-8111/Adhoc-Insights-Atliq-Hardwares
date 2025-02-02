with cte1 as
(
	select 
		c.channel as channel ,
		g.gross_price * s.sold_quantity as gross_sales_mln 
	from  fact_sales_monthly s 
	join fact_gross_price g 
	on 
		g.product_code = s.product_code AND
		g.fiscal_year = s.fiscal_year 
	join dim_customer c
	on 
		c.customer_code = s.customer_code
	where s.fiscal_year = 2021
	group by channel
)
select 
	*,
	gross_sales_mln*100/sum(gross_sales_mln) over() as  percentage 
from cte1