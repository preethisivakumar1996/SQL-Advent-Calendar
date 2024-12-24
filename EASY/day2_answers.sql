-- Santa wants to know which gifts weigh more than 1 kg. 
-- Can you list them?

SELECT gift_name, weight_kg
FROM gifts
WHERE weight_kg > 1;
