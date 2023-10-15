SELECT * FROM pizza_sales;

--KPI

-- 1. Total Revenue


SELECT ROUND(SUM(total_price),2) AS Total_Revenue from pizza_sales;


-- 2. Average Order Value

SELECT ROUND((SUM(total_price)/COUNT(DISTINCT  order_id)),2) AS Average_Order_Value from pizza_sales;


-- 3. Total Pizzas Sold

SELECT SUM(quantity) AS Total_Pizzas_Sold from pizza_sales;

-- 4. Total Number of Order Placed

SELECT COUNT(distinct order_id) AS Total_Number_Of_Order_Placed FROM pizza_sales;

-- 5. Average Pizza per Order

SELECT CAST (CAST(SUM(quantity) AS DECIMAL (10,2))/CAST(COUNT(DISTINCT order_id) AS decimal(10,2)) as decimal (10,2)) AS Average_Pizza_per_Order FROM pizza_sales;

-- Charts Requirements

-- 1. Daily Trend for Total Orders

SELECT DATENAME(DW,order_date) AS Order_Day, COUNT(Distinct order_id) AS Total_Orders from pizza_sales
GROUP BY  DATENAME(DW,order_date);

-- 2. Monthly Trend for Total Orders
SELECT DATENAME(MM,order_date) AS Order_Month, COUNT(Distinct order_id) AS Total_Orders from pizza_sales
GROUP BY  DATENAME(MM,order_date);

-- 3. Percentage of Sale by Pizza Category

SELECT DISTINCT pizza_category,(SUM(total_price)*100/(SELECT SUM(total_price) from pizza_sales)) AS Percent_of_Sales  FROM pizza_sales
GROUP BY pizza_category;

-- For Month of January
SELECT DISTINCT pizza_category,(SUM(total_price)*100/(SELECT SUM(total_price) from pizza_sales where MONTH(order_date)=1)) AS Percent_of_Sales  FROM pizza_sales
where MONTH(order_date)=1
GROUP BY pizza_category;

-- 4. Percentage of Sale by Pizza Category by Pizza Size
SELECT DISTINCT pizza_size,SUM(total_price)*100/(SELECT SUM(total_price) from pizza_sales ) AS Percent_of_Sales  FROM pizza_sales
GROUP BY pizza_size;

-- 5. Top 5 Pizza Sold
SELECT top 5 pizza_name,sum(total_price) as Total_Revenue from pizza_sales
group by pizza_name order by sum(total_price)  desc;

--6 Bottom 5 Sold
SELECT top 5 pizza_name,sum(total_price) as Total_Revenue from pizza_sales
group by pizza_name order by sum(total_price) ;

-- 7. Top 5 Pizzas Sold by Qunatity

SELECT top 5 pizza_name,sum(quantity) as Total_Quantity from pizza_sales
group by pizza_name order by sum(quantity)  desc;

-- 8. Bottom 5 Pizzas Sold by Qunatity

SELECT top 5 pizza_name,sum(quantity) as Total_Quantity from pizza_sales
group by pizza_name order by sum(quantity);

-- 9. Top 5 Pizzas Sold by Order

SELECT top 5 pizza_name,count(distinct order_id) as Total_Orders from pizza_sales
group by pizza_name order by sum(quantity)  desc;

-- 10. Bottom 5 Pizzas Sold by Order

SELECT top 5 pizza_name,count(distinct order_id) as Total_Orders from pizza_sales
group by pizza_name order by sum(quantity);