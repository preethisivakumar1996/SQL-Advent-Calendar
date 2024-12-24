-- Santa needs to optimize his sleigh for Christmas deliveries. 
-- Write a query to calculate the total weight of gifts for each recipient type (good or naughty) and 
-- determine what percentage of the total weight is allocated to each type. 
-- Include the recipient_type, total_weight, and weight_percentage in the result.

SELECT 
    recipient_type,
    SUM(weight_kg) AS total_weight,
    SUM(weight_kg) * 100 / (SELECT SUM(weight_kg) FROM gifts) AS weight_percentage
FROM gifts
GROUP BY recipient_type;
