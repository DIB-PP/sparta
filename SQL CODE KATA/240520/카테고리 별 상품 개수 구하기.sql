SELECT SUBSTR(product_code, 1, 2) AS CATEGORY
     , COUNT(SUBSTR(product_code, 1, 2)) AS PRODUCTS
FROM product 
GROUP BY SUBSTR(product_code, 1, 2)
ORDER BY SUBSTR(product_code, 1, 2)
