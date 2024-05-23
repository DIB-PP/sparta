SELECT product.product_code
     , product.price * SUM(offline_sale.sales_amount) AS SALES
FROM product LEFT JOIN offline_sale ON product.product_id = offline_sale.product_id
GROUP BY product.product_id
ORDER BY SALES DESC, product.product_code
