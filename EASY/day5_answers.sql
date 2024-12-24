-- This year, we're celebrating Christmas in the Southern Hemisphere! 
-- Which beaches are expected to have temperatures above 30°C on Christmas Day?

SELECT beach_name
FROM beach_temperature_predictions
WHERE date = '2024-12-25'
AND expected_temperature_c > 30 ;
