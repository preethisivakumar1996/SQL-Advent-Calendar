SELECT customer_name, COUNT(DISTINCT activity) AS Distonct_activity_count
FROM rentals
GROUP BY customer_name
HAVING COUNT(DISTINCT activity) > 1;
