select fmc.product_code,dp.product,fmc.manufacturing_cost
from fact_manufacturing_cost fmc 
join dim_product dp
on fmc.product_code = dp.product_code
where fmc.manufacturing_cost in (


select max(manufacturing_cost) from fact_manufacturing_cost
union
select min(manufacturing_cost) from fact_manufacturing_cost)