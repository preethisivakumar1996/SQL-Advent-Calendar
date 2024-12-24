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
