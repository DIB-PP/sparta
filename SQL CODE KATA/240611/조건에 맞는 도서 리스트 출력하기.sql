SELECT book_id
     , DATE_FORMAT(published_date, '%Y-%m-%d') AS published_date
FROM book
WHERE published_date LIKE '2021%'
    AND category = '인문'
ORDER BY DATE_FORMAT(published_date, '%Y-%m-%d')
