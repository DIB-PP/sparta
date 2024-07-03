-- **group by 절**을 사용하여, 서버별 게임캐릭터id수(중복값 허용x)와 평균 경험치를 추출해주세요.
SELECT serverno 
		, COUNT(DISTINCT(game_actor_id))
		, AVG(`exp`)
FROM users 
GROUP BY serverno ;

-- **group by 와 having 절을 사용**하여, 일별 게임캐릭터id수(중복값 허용x)를 구하고, 그 값이 10개를 초과하는 경우를 추출해주세요.
SELECT `date` 
		, COUNT(DISTINCT(game_actor_id))
FROM users u 
GROUP BY `date` 
HAVING COUNT(DISTINCT(game_actor_id)) > 10 ;

-- `🔥중요` 위와 같은 문제를 having 이 아닌 **인라인 뷰 subquery** 를 사용하여, 추출해주세요
SELECT *
FROM ( SELECT `date` 
					, COUNT(DISTINCT(game_actor_id)) AS d_actor_id
			FROM users
			GROUP BY `date` ) d_users
WHERE d_actor_id > 10
