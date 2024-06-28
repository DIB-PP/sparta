SELECT board.writer_id
     , goods.nickname
     , CONCAT(goods.city, ' ', goods.street_address1, ' ', goods.street_address2) AS '전체주소'
     , CONCAT(SUBSTR(goods.tlno, 1, 3), '-', SUBSTR(goods.tlno, 4, 4), '-', SUBSTR(goods.tlno, 8, 4)) AS '전화번호'
FROM used_goods_board AS board LEFT JOIN used_goods_user AS goods ON board.writer_id = goods.user_id
GROUP BY board.writer_id
HAVING COUNT(board.writer_id) > 2
ORDER BY board.writer_id DESC
