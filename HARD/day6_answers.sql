SELECT polar_bears.bear_id, polar_bears.bear_name, SUM(tracking.distance_km) AS total_distance_traveled
FROM polar_bears 
JOIN tracking 
  ON polar_bears.bear_id = tracking.bear_id
WHERE tracking.date BETWEEN '2024-12-01' AND '2024-12-31'
GROUP BY polar_bears.bear_id, polar_bears.bear_name
ORDER BY total_distance_traveled DESC
LIMIT 3;
