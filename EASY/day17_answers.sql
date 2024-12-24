-- The Grinch is planning out his pranks for this holiday season. 
-- Which pranks have a difficulty level of “Advanced” or “Expert"? 
-- List the prank name and location (both in descending order).

SELECT prank_name, location
FROM grinch_pranks
WHERE difficulty = "Advanced" OR difficulty = "Expert"
ORDER BY  prank_name DESC, location DESC;
