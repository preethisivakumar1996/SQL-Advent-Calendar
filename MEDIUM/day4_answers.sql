SELECT ski_resorts.region, AVG(snowfall_inches) AS average_snowfall
FROM ski_resorts 
JOIN snowfall 
  ON ski_resorts.resort_id = snowfall.resort_id
GROUP BY ski_resorts.region
ORDER BY average_snowfall DESC;
