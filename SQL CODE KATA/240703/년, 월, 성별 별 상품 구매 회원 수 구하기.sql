SELECT YEAR(sale.sales_date) AS YEAR
     , MONTH(sale.sales_date) AS MONTH
     , info.gender AS GENDER
     , COUNT(DISTINCT info.user_id) AS USERS
FROM user_info AS info LEFT JOIN online_sale AS sale ON info.user_id = sale.user_id
WHERE info.gender IS NOT NULL
    AND sale.sales_date IS NOT NULL
GROUP BY YEAR(sale.sales_date), MONTH(sale.sales_date), info.gender
ORDER BY YEAR(sale.sales_date), MONTH(sale.sales_date), info.gender
