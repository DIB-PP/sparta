SELECT user.user_id
     , user.nickname
     , SUM(board.price) AS TOTAL_SALES
FROM used_goods_board AS board LEFT JOIN used_goods_user AS user ON board.writer_id = user.user_id
WHERE board.status = 'DONE'
GROUP BY user.user_id
HAVING SUM(board.price) >= 700000
ORDER BY total_sales 
