SELECT guest_name 
FROM guests
LEFT JOIN guest_gifts
ON guests.guest_id = guest_gifts.guest_id
WHERE guest_gifts.guest_id IS NULL;
