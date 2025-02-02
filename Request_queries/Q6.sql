with cte1 as
(
select 
	p.customer_code,
	avg(pre_invoice_discount_pct)*100 as pct
from fact_pre_invoice_deductions p
join dim_customer c
	on c.customer_code = p.customer_code
where fiscal_year = 2021 and c.market = "India"
group by p.customer_code
)
	select c.customer_code,
		dc.customer,
        c.pct
	from cte1 c 
	join dim_customer dc
		on c.customer_code = dc.customer_code
	order by pct desc
	limit 5