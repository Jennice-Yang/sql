

SELECT product_id, quantity
FROM (SELECT product_id, quanity,
	ROW_NUMBER() OVER (PARTITION BY product_id ORDER BY market_date DESC) 
	AS rn
FROM vendor_inventory vi
)x
WHERE rn = 1;


