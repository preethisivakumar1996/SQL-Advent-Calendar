-- You are tracking your friends' New Year’s resolution progress. 
-- Write a query to calculate the following for each friend: 
-- 1. number of resolutions they made, 
-- 2. number of resolutions they completed, and 
-- 3. success percentage (% of resolutions completed) and 
-- 4. a success category based on the success percentage:
-- Green: If success percentage is greater than 75%.
-- Yellow: If success percentage is between 50% and 75% (inclusive).
-- Red: If success percentage is less than 50%.SELECT friend_name,


COUNT(resolution_id) as Number_of_Resolutions_Made, 
SUM(is_completed) as Number_of_Resolutions_Completed, 
(SUM(is_completed)*100)/COUNT(resolution_id)as Success_Percentage,
CASE WHEN (SUM(is_completed)*100)/COUNT(resolution_id) > 75 THEN "Green"
      WHEN (SUM(is_completed)*100)/COUNT(resolution_id) >=50 
      AND (SUM(is_completed)*100)/COUNT(resolution_id) <=75 THEN "Yellow"
      ELSE "Red" END AS Success_Category
FROM resolutions
GROUP BY friend_name;
