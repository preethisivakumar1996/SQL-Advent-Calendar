SELECT prank_name, location
FROM grinch_pranks
WHERE difficulty = "Advanced" OR difficulty = "Expert"
ORDER BY  prank_name DESC, location DESC;
