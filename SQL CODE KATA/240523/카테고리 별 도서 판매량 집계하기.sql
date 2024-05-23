SELECT book.category AS CATEGORY
     , SUM(sales.sales) AS TOTAL_SALES
FROM book_sales AS sales LEFT JOIN book ON sales.book_id = book.book_id
WHERE sales.sales_date LIKE '2022-01%'
GROUP BY book.category
ORDER BY book.category
