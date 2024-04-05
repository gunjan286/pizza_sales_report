select*from xyz;

select sum(total_price) as total_revenue from xyz
select sum(total_price) / COUNT(DISTINCT order_id) as avg_order_value from xyz
select sum(quantity) a total_pizza_sold from xyz
select count(distinct order_id) as total_orders from xyz
select sum(quantity) / (count(distinct order_id)) from xyz


select DATENAME(DW, order_date) as order_day,count(DISTINCT order_id) as total_orders
from xyz
group by DATENAME(DW,order_date)


select DATENAME(MONTH, order_date) as month_name, count(DISTINCT order_id) as total_orders
from xyz 
group by DATENAME(MONTH, order_date)
order by total_orders desc 


select pizza_category , sum(total_price)*100 / (select sum(total_price) from xyz) as PCT
from xyz
group by pizza_category


select TOP 5 pizza_name,sum(total_price) as total_revenue
from xyz
group by pizza_name
order by total_revenue desc


select top 5 pizza_name,sum(total_price) as total_revenue
from xyz
group by pizza_name
order by total_revenue ASC






