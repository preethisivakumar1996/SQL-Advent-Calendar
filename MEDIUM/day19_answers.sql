--Scientists are studying the diets of polar bears. 
-- Write a query to find the maximum amount of food (in kilograms) consumed by each polar bear in a single meal December 2024. 
-- Include the bear_name and biggest_meal_kg, and sort the results in descending order of largest meal consumed.

SELECT bear_name, max(food_weight_kg) AS biggest_meal_kg
FROM polar_bears 
JOIN meal_log ON polar_bears.bear_id = meal_log.bear_id
WHERE strftime("%m",date) = "12" AND strftime("%Y",date) = "2024"
GROUP BY bear_name
ORDER BY biggest_meal_kg DESC;
