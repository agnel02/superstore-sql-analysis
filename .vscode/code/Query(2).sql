-- REGION PERFORMANCE (GROUP BY + HAVING)
SELECT 
    Region,
    concat("$"," " , round(sum(sales), 2)) as total_revenue,
    count(distinct customerid) as Customer,
    concat("$"," ", round(avg(sales), 2)) as avg_sales
    from superstore
    group by region 
    having sum(sales) >100000 
    order by total_revenue desc
