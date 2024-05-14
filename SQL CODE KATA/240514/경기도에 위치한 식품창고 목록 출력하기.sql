SELECT warehouse_id
     , warehouse_name
     , address
     , IF(freezer_yn IS NULL, 'N', freezer_yn) AS FREEZER_YN
FROM food_warehouse
WHERE address LIKE '%경기도%'
ORDER BY warehouse_id
