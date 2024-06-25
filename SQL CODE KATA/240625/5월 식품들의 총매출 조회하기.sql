SELECT product_id
     , product_name
     , SUM(total_sales) AS total_sales
FROM (SELECT product.product_id
            , product.product_name
            , product.price * food.amount AS total_sales
      FROM food_product AS product JOIN food_order AS food ON product.product_id = food.product_id
      WHERE DATE_FORMAT(food.produce_date, '%Y-%m') = '2022-05') total
GROUP BY product_id
ORDER BY total_sales DESC, product_id
