SELECT price_group
     , COUNT(price_group)
FROM ( SELECT CASE WHEN price < 10000 THEN 0
                   WHEN price < 20000 THEN 10000
                   WHEN price < 30000 THEN 20000
                   WHEN price < 40000 THEN 30000
                   WHEN price < 50000 THEN 40000
                   WHEN price < 60000 THEN 50000
                   WHEN price < 70000 THEN 60000
                   WHEN price < 80000 THEN 70000
                   WHEN price < 90000 THEN 80000
              END AS PRICE_GROUP
        FROM product ) price
GROUP BY price_group
ORDER BY price_group
