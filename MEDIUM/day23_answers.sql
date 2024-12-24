SELECT day_of_month,
Weight - LAG(Weight) OVER(Order by (day_of_month)) as Weight_change
FROM grinch_weight_log;

---- OR -----

SELECT 
    g1.day_of_month,
    g1.weight - g2.weight AS weight_change
FROM grinch_weight_log g1
LEFT JOIN grinch_weight_log g2
    ON g1.day_of_month = g2.day_of_month + 1
ORDER BY g1.day_of_month;
