SELECT recipient, SUM(weight_kg) as Total_Weight
FROM gifts
GROUP BY recipient;
