-- You are managing inventory in Santa's workshop. 
-- Which gifts are meant for "good" recipients? List the gift name and its weight.

SELECT gift_name, weight_kg
FROM gifts
WHERE recipient_type = 'good';
