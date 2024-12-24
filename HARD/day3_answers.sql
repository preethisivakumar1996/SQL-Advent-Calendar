-- You’re trying to identify the most calorie-packed candies to avoid during your holiday binge. 
-- Write a query to rank candies based on their calorie count within each category. 
-- Include the candy_name, candy_category, calories, and rank (rank_in_category) within the category.

SELECT 
  candy_name, 
  candy_category, 
  calories, 
   RANK() OVER (PARTITION BY candy_category ORDER BY calories DESC) AS rank_in_category
FROM candy_nutrition;
