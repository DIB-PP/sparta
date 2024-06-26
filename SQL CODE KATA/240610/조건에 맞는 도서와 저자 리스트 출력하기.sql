SELECT book.book_id
     , author.author_name
     , DATE_FORMAT(book.published_date, '%Y-%m-%d') AS published_date
FROM book LEFT JOIN author ON book.author_id = author.author_id
WHERE book.category = '경제'
ORDER BY DATE_FORMAT(book.published_date, '%Y-%m-%d') ASC
