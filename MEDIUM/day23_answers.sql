-- The Grinch tracked his weight every day in December to analyze how it changed daily. 
-- Write a query to return the weight change (in pounds) for each day, calculated as the difference from the previous day's weight.

SELECT day_of_month,
Weight - LAG(Weight) OVER(Order by (day_of_month)) as Weight_change
FROM grinch_weight_log;
