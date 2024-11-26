use tashi_dw; 

-- Query 1
with revenuebyday as (select p.productname as productname, month(o.order_date) as salemonth, case when dayofweek(o.order_date) in (1, 7) then 'weekend' else 'weekday' end as daytype, 
sum(t.sales) as totalrevenue from transactions t inner join products p on t.productid = p.productid inner join orders o on t.order_id = o.order_id where year(o.order_date) = 2019 group by p.productname,
month(o.order_date), daytype), rankedrevenue as (select productname, salemonth, daytype, totalrevenue, row_number() over (partition by salemonth, daytype order by totalrevenue desc) as revenue_rank 
from revenuebyday) select salemonth, daytype, productname, totalrevenue from rankedrevenue where revenue_rank <= 5 order by salemonth, daytype, totalrevenue desc;


-- Query 2
with quarterly_revenue as (select s.storename, quarter(o.order_date) as quarter, sum(t.sales) as total_revenue from transactions t inner join store s on t.storeid = s.storeid inner join 
orders o on t.order_id = o.order_id where year(o.order_date) = 2019 group by s.storename, quarter(o.order_date)), growth_rate as (select storename, quarter, total_revenue, lag(total_revenue) 
over (partition by storename order by quarter) as previous_revenue, case when lag(total_revenue) over (partition by storename order by quarter) is null then null else 
(total_revenue - lag(total_revenue) over (partition by storename order by quarter)) / lag(total_revenue) over (partition by storename order by quarter) * 100 end as growth_rate 
from quarterly_revenue) select storename, quarter, total_revenue, growth_rate from growth_rate order by storename, quarter;


-- Query 3
select st.storename, sp.suppliername, p.productname, sum(t.sales) as total_sales_contribution from transactions t inner join store st on t.storeid = st.storeid 
inner join supplier sp on t.supplierid = sp.supplierid inner join products p on t.productid = p.productid group by st.storename, sp.suppliername, p.productname 
order by st.storename, sp.suppliername, p.productname;


-- Query 4
with seasonal_sales as (select p.productname, sum(t.sales) as total_sales, case when month(o.order_date) in (3, 4, 5) then 'Spring' when month(o.order_date) in (6, 7, 8) 
then 'Summer' when month(o.order_date) in (9, 10, 11) then 'Fall' when month(o.order_date) in (12, 1, 2) then 'Winter' end as season from transactions t 
inner join products p on t.productid = p.productid inner join orders o on t.order_id = o.order_id group by p.productname, season) select productname, season, total_sales from seasonal_sales 
order by productname, season;

-- Query 5
with monthly_revenue as (select st.storename, sp.suppliername, month(o.order_date) as month, sum(t.sales) as total_revenue from transactions t inner join store st on t.storeid = st.storeid
inner join supplier sp on t.supplierid = sp.supplierid inner join orders o on t.order_id = o.order_id group by st.storename, sp.suppliername, month(o.order_date)), revenue_volatility 
as (select storename, suppliername, month, total_revenue, lag(total_revenue) over (partition by storename, suppliername order by month) as previous_revenue, case when lag(total_revenue) 
over (partition by storename, suppliername order by month) is null then null else (total_revenue - lag(total_revenue) over (partition by storename, suppliername order by month)) / lag(total_revenue) 
over (partition by storename, suppliername order by month) * 100 end as volatility_percentage from monthly_revenue) select storename, suppliername, month, volatility_percentage from revenue_volatility
order by storename, suppliername, month;

-- Query 6
select t1.productid as productid_1, p1.productname as product_1, t2.productid as productid_2, p2.productname as product_2, count(*) as product_pair_count from transactions t1 
join transactions t2 on t1.order_id = t2.order_id and t1.productid < t2.productid join products p1 on t1.productid = p1.productid join products p2 
on t2.productid = p2.productid group by t1.productid, t2.productid order by product_pair_count desc limit 5;

-- Query 7
select s.storename, sup.suppliername, p.productname, sum(t.sales) as total_revenue, year(o.order_date) as sale_year from transactions t join orders o on t.order_id = o.order_id 
join products p on t.productid = p.productid join store s on t.storeid = s.storeid join supplier sup on t.supplierid = sup.supplierid 
group by s.storename, sup.suppliername, p.productname, sale_year with rollup;


-- Query 8 
select p.productname, sum(case when month(o.order_date) between 1 and 6 then t.sales else 0 end) as revenue_h1, sum(case when month(o.order_date) between 1 and 6 then t.quantity_ordered else 0 end) 
as qty_h1, sum(case when month(o.order_date) between 7 and 12 then t.sales else 0 end) as revenue_h2, sum(case when month(o.order_date) between 7 and 12 then t.quantity_ordered else 0 end) as qty_h2,
sum(t.sales) as revenue_total, sum(t.quantity_ordered) as qty_total from transactions t join orders o on t.order_id = o.order_id join products p on t.productid = p.productid group by p.productname;


-- Query 9
select t.productid, p.productname, o.order_date, t.sales, avg_sales.daily_avg, case when t.sales > 2 * avg_sales.daily_avg then 'Outlier' else 'Normal' end as sales_flag from transactions t 
join orders o on t.order_id = o.order_id join products p on t.productid = p.productid join (select t.productid, o.order_date, avg(t.sales) as daily_avg from transactions t join orders o on 
t.order_id = o.order_id group by t.productid, o.order_date) avg_sales on t.productid = avg_sales.productid and o.order_date = avg_sales.order_date;

-- Query 10
create view store_quarterly_sales as select s.storeName, year(o.order_date) as sale_year, quarter(o.order_date) as sale_quarter, sum(t.sales) as total_sales from transactions t 
join orders o on t.order_id = o.order_id join store s on t.storeid = s.storeid group by s.storeName, sale_year, sale_quarter order by s.storeName, sale_year, sale_quarter;












