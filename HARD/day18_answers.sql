SELECT activity_name, AVG(rating) as Avg_rating
FROM activities a
JOIN activity_ratings a_r
ON a.activity_id = a_r.activity_id
GROUP BY a.activity_name
ORDER BY Avg_rating desc
LIMIT 2; 
