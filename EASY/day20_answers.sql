SELECT DISTINCT(vendor_name)
FROM vendors as v
JOIN item_prices as ip
ON v.vendor_id = ip.vendor_id
WHERE price_usd < 10;
