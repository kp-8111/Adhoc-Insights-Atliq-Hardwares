with cte1 as
(
	SELECT 
		division,
		p.product_code,
		product, 
		sum(s.sold_quantity) as total_sold_quantity 
	FROM gdb023.fact_sales_monthly s
	join dim_product p 
	on s.product_code = p.product_code
	group by division,product
),
cte2 as 
(
	select 
		division,
        product_code,
        product,
        total_sold_quantity,
		dense_rank() over(partition by division order by total_sold_quantity desc) as rank_order
	from cte1
)
select 
	*
	from cte2 
	where rank_order<=3
