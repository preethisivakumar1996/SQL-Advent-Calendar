-- We are hosting a gift party and need to ensure every guest receives a gift. 
-- Using the guests and guest_gifts tables, 
-- write a query to identify the guest(s) who have not been assigned a gift (i.e. they are not listed in the guest_gifts table).

SELECT guest_name 
FROM guests
LEFT JOIN guest_gifts
ON guests.guest_id = guest_gifts.guest_id
WHERE guest_gifts.guest_id IS NULL;
