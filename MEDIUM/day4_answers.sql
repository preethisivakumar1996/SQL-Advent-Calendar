-- You’re planning your next ski vacation and want to find the best regions with heavy snowfall. 
-- Given the tables resorts and snowfall, find the average snowfall for each region and sort the regions in descending order of average snowfall. 
-- Return the columns region and average_snowfall. 

SELECT ski_resorts.region, AVG(snowfall_inches) AS average_snowfall
FROM ski_resorts 
JOIN snowfall 
  ON ski_resorts.resort_id = snowfall.resort_id
GROUP BY ski_resorts.region
ORDER BY average_snowfall DESC;
