SELECT info.rest_id
     , info.rest_name
     , info.food_type
     , info.favorites
     , info.address
     , ROUND(AVG(review.review_score), 2) AS SCORE
FROM rest_info AS info LEFT JOIN rest_review AS review ON info.rest_id = review.rest_id
WHERE info.address LIKE '서울%'
    AND review.review_score IS NOT NULL 
GROUP BY info.rest_name
ORDER BY ROUND(AVG(review.review_score), 2) DESC, info.favorites DESC
