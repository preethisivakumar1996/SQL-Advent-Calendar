SELECT 
  vendors.vendor_name, SUM(quantity_sold * price_per_unit) AS total_revenue
FROM sales 
JOIN vendors 
  ON vendors.vendor_id = sales.vendor_id
GROUP BY vendors.vendor_name
ORDER BY total_revenue DESC
LIMIT 2;
