-- TOP PRODUCTS BY REVENUE

SELECT  
 Subcategory,
 count(*) as orders ,
 concat("$", sum(sales)) as total_revenue,
 concat(round(sum(profit)/sum(sales)*100,2),"%") as profit_margin
 from superstore
 group by subcategory
 order by total_revenue desc
 limit 10;