-- A community is hosting a series of festive feasts, and they want to ensure a balanced menu. 
-- Write a query to identify the top 3 most calorie-dense dishes (calories per gram) served for each event. 
-- Include the dish_name, event_name, and the calculated calorie density in your results.

WITH Ranked_Dishes AS (
    SELECT 
        menu.dish_name,
        events.event_name,
        (menu.calories / menu.weight_g) AS calorie_density,
        ROW_NUMBER() OVER (PARTITION BY events.event_id ORDER BY (menu.calories / menu.weight_g) DESC) AS rank
    FROM menu
    JOIN events ON events.event_id = menu.event_id
)
SELECT dish_name, event_name, calorie_density
FROM Ranked_Dishes
WHERE rank <= 3
ORDER BY event_name, rank;
