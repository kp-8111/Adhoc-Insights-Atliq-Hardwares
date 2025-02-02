SELECT dp.segment,
count(distinct fsm.product_code) as product_count 
FROM
gdb023.fact_sales_monthly fsm
join dim_product  dp
on dp.product_code = fsm.product_code
group by dp.segment
order by product_count desc
