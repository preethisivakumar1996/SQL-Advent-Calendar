-- We need to make sure Santa's sleigh is properly balanced. 
-- Find the total weight of gifts for each recipient.

SELECT recipient, SUM(weight_kg) as Total_Weight
FROM gifts
GROUP BY recipient;
