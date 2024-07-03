-- 모든 데이터 컬럼 추출
SELECT *
FROM users ;

-- 데이터 중 date 컬럼만 추출하되, 이름을 yearmonthday 로 변경하여 추출
SELECT date AS yearmonthday
FROM users ;

-- 게임계정id 갯수 추출(중복값을 허용, 중복값 제외를 동시에 추출해주세요)
SELECT COUNT(game_account_id)
     , COUNT(DISTINCT(game_account_id))
FROM users ;

-- 캐릭터id 갯수 추출(중복값을 허용, 중복값 제외를 동시에 추출해주세요)
SELECT COUNT(game_actor_id)
     , COUNT(DISTINCT(game_actor_id))
FROM users ;
