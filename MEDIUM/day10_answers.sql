SELECT friend_name,
COUNT(resolution_id) as Number_of_Resolutions_Made, 
SUM(is_completed) as Number_of_Resolutions_Completed, 
(SUM(is_completed)*100)/COUNT(resolution_id)as Success_Percentage,
CASE WHEN (SUM(is_completed)*100)/COUNT(resolution_id) > 75 THEN "Green"
      WHEN (SUM(is_completed)*100)/COUNT(resolution_id) >=50 
      AND (SUM(is_completed)*100)/COUNT(resolution_id) <=75 THEN "Yellow"
      ELSE "Red" END AS Success_Category
FROM resolutions
GROUP BY friend_name;
