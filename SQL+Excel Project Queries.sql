use [Pizza DB];

select * from Pizza;

-- Total Revenue

select round(SUM(total_price),2) as Total_Revenue from Pizza;

-- Average Order Value

select Round(SUM(total_price) / count(distinct order_id),2) as Avrage_Order_Value from Pizza;

-- Total Pizzas Sold

select SUM(quantity) as Total_Pizza_Sold from Pizza;

-- Total Orders

select COUNT(distinct order_id) as Total_orders from Pizza;

-- Average Pizzas per order

select cast(cast(SUM(quantity) as decimal(10,2)) / cast(count(distinct order_id) as decimal (10,2)) as decimal (10,2)) as Average_Pizzas_Per_Order from Pizza;

-- Daily Trend for Total Orders

select DATENAME(DW,order_date) AS Order_Day, 
COUNT(distinct order_id) as Total_Orders from Pizza 
group by DATENAME(DW,order_date);

-- Hourly Trend for Orders

select Datepart(HOUR,order_time) AS Order_Hours, 
COUNT(distinct order_id) as Total_Orders from Pizza 
group by DATEPART(Hour,order_time) 
order by Datepart(HOUR,order_time) asc;

-- % of Sales by Pizza Category

select pizza_category, 
Cast(SUM(total_price) as Decimal (10,2)) as Sales, 
CAST(sum(total_price) * 100 / (select sum(total_price) from Pizza) as Decimal (10,2)) as PCT from Pizza 
group by pizza_category;

-- % of Sales by Pizza Size

select pizza_size, 
Cast(SUM(total_price) as Decimal (10,2)) as Sales, 
CAST(sum(total_price) * 100 / (select sum(total_price) from Pizza) as Decimal (10,2)) as PCT from Pizza 
group by pizza_size
order by pizza_size;

-- Total Pizzas Sold by Pizza Category

Select pizza_category, sum(quantity) as Total_Quantity_Sold from Pizza 
group by pizza_category;

-- Top 5 Best Sellers by Total Pizzas Sold

select top 5 pizza_name, sum(quantity) as Total_Quantity_Sold from Pizza 
group by pizza_name 
order by sum(quantity)  desc ;

-- H.	Bottom 5 Best Sellers by Total Pizzas Sold

select top 5 pizza_name, sum(quantity) as Total_Quantity_Sold from Pizza 
group by pizza_name 
order by sum(quantity)  asc ;

-- Using Monthly, Weekly And Quarterly Filters to the Queries

select DATENAME(DW,order_date) AS Order_Day, 
COUNT(distinct order_id) as Total_Orders from Pizza 
where MONTH (order_date) = 1
group by DATENAME(DW,order_date);

-- QUARTERLY 

select DATENAME(DW,order_date) AS Order_Day, 
COUNT(distinct order_id) as Total_Orders from Pizza 
where Datepart (Quarter, order_date) = 1
group by DATENAME(DW,order_date);