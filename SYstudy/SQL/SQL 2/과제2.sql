-- date 컬럼이 2023-01-01 보다 큰 날짜의 game_account_id, game_actor_id, serverno를 추출해주세요.
SELECT game_account_id 
		 , game_actor_id 
		 , serverno 
FROM users 
WHERE `date` > '2023-01-01' ;

-- **조건1)** level 컬럼이 10 초과이고, 
-- **조건2)**serverno컬럼이 1이 아니며,  
-- **조건3)**아이템이름컬럼이 레벨업 패키지 또는 시즌패스이고, 
-- **조건4)**아이템 획득경로가 상점에서 구매한 경우의 date, ip_addr, exp, zone_id 를 추출하고 결과값을 date 기준 내림차순으로 정렬하여 추출해주세요.
SELECT `date` 
		 , ip_addr 
		 , `exp` 
		 , zone_id 
FROM users 
WHERE `level` > 10
		AND serverno != 1
		AND (etc_str2 = '레벨업 패키지' OR etc_str2  = '시즌패스')
		AND (etc_str1 = '상점에서 구매') 
ORDER BY `date` DESC ;

-- case when 구문을 사용하여 레벨구간을 아래와 같이 구분해주시고, 컬럼이름을 ‘levelgroup’으로 설정해주세요. 
-- game_actor_id, level, levelgroup, date컬럼을 추출해주시고, date 를 기준으로 내림차순 정렬해주세요. 결과값은 아래와 같아야 합니다. (전체 출력결과 중 일부입니다!)
SELECT game_actor_id 
		, `level` 
		, CASE WHEN `level` < 11 THEN '1~10Lv 이하'
				 WHEN `level` < 21 THEN '11~20Lv 이하'
				 WHEN `level` < 31 THEN '21~30Lv 이하'
				 WHEN `level` < 41 THEN '31~40Lv 이하'
				 WHEN `level` < 51 THEN '41~50Lv 이하'
				 WHEN `level` < 61 THEN '51~60Lv 이하'
				 WHEN `level` < 71 THEN '61~70Lv 이하'
				 WHEN `level` < 81 THEN '71~80Lv 이하'
				 WHEN `level` < 91 THEN '81~90Lv 이하'
				 ELSE '91~100Lv'
		END AS levelgroup
		, `date` 
FROM users
ORDER BY `date` DESC
