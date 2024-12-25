-- Santa is tracking how many presents he delivers each night leading up to Christmas. 
-- He wants a running total to see how many gifts have been delivered so far on any given night. 
-- Using the deliveries table, calculate the cumulative sum of gifts delivered, ordered by the delivery date.

-- ############################ Soultion Code ###########################

SELECT 
    delivery_date,      -- Selecting the delivery date for reference
    SUM(gifts_delivered)OVER(ORDER BY delivery_date) AS cumulative_gifts     -- Calculating the cumulative sum of gifts delivered up to each date
FROM 
    deliveries     -- Using the deliveries table to retrieve data
ORDER BY 
    delivery_date;     -- Ordering results by delivery date for clarity
