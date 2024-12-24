-- As the owner of a candy store, you want to understand which of your products are selling best. 
-- Write a query to calculate the total revenue generated from each candy category.

SELECT category,
SUM(quantity_sold*price_per_unit) as Total_Revenue
FROM candy_sales
GROUP BY Category;
