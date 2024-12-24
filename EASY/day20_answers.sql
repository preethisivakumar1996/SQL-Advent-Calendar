-- We are looking for cheap gifts at the market. 
-- Which vendors are selling items priced below $10? List the unique (i.e. remove duplicates) vendor names.

SELECT DISTINCT(vendor_name)
FROM vendors as v
JOIN item_prices as ip
ON v.vendor_id = ip.vendor_id
WHERE price_usd < 10;
