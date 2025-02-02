with cte1 as
(
	select
		dp.segment as seg20,
		count(distinct fsm.product_code) as product_count_2020 
	FROM
	gdb023.fact_sales_monthly fsm
	join dim_product  dp
		on dp.product_code = fsm.product_code
	where fsm.fiscal_year = 2020
	group by dp.segment
),
cte2 as 
(
	select
		dp.segment as dp_segment,
		count(distinct fsm.product_code) as product_count_2021
	FROM
	gdb023.fact_sales_monthly fsm
	join dim_product  dp
		on dp.product_code = fsm.product_code
	where fsm.fiscal_year = 2021
	group by dp.segment
)
	select 
		dp_segment as segment,
		product_count_2020,
		product_count_2021,
		product_count_2021 - product_count_2020 as Difference
	from cte1,cte2
	order by Difference desc