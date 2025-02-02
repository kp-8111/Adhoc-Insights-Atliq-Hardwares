with cte1 as
(
	SELECT
    count(distinct fsm.product_code) as unique_products_2020
	FROM
	gdb023.fact_sales_monthly fsm
	join dim_product  dp
		on dp.product_code = fsm.product_code
	where fiscal_year = 2020 
),
cte2 as
(
	SELECT 
		count(distinct fsm.product_code) as unique_products_2021
	FROM
	gdb023.fact_sales_monthly fsm
	join dim_product  dp
		on dp.product_code = fsm.product_code
	where fiscal_year = 2021
)
	select 
		*,
		(unique_products_2021 - unique_products_2020)*100/unique_products_2020 as Pct_Chng
	from cte1,cte2