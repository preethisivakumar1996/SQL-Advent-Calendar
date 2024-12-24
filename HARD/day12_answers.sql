--A collector wants to identify the top 3 snow globes with the highest number of figurines. 
-- Write a query to rank them and include their globe_name, number of figurines, and material.

WITH Rank_Them AS
(SELECT
snow_globes.globe_name,
snow_globes.globe_id, snow_globes.material,
Count(figurines.figurine_id) AS Fig_total,
RANK() Over(order by Count(figurines.figurine_id)desc)AS Rank
FROM snow_globes
JOIN figurines 
ON snow_globes.globe_id = figurines.globe_id
GROUP BY snow_globes.globe_id)
SELECT globe_name, Fig_total, material
FROM Rank_Them
ORDER BY Rank ASC
LIMIT 3;
