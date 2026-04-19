-- CUSTOMER PERFORMANCE (GROUP BY + ORDER BY)

select 
 customerID,customerName,
 count(*) as orders,
 concat("$"," ", round(sum(sales), 2)) as revenue,
 max(orderdate) as last_order_date
 from superstore
 group by customerID,customerName
 order by revenue desc

