-- The owner of a winter market wants to know which vendors have generated the highest revenue overall. 
-- For each vendor, calculate the total revenue for all their items and return a list of the top 2 vendors by total revenue. 
-- Include the vendor_name and total_revenue in your results.

SELECT 
  vendors.vendor_name, SUM(quantity_sold * price_per_unit) AS total_revenue
FROM sales 
JOIN vendors 
  ON vendors.vendor_id = sales.vendor_id
GROUP BY vendors.vendor_name
ORDER BY total_revenue DESC
LIMIT 2;
