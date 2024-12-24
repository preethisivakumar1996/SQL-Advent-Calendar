SELECT category,
SUM(quantity_sold*price_per_unit) as Total_Revenue
FROM candy_sales
GROUP BY Category;
