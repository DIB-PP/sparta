-- 확인용
SELECT *
FROM what_we_watched_a_netflix wwwan 

-- 넷플릭스 시청 시간 테이블 타이틀 공백 제거하기 
UPDATE what_we_watched_a_netflix
SET Title = REPLACE (Title, ' ', '')

-- 넷플릭스 시청 시간 테이블 타이틀 소문자로 변경하기  
UPDATE what_we_watched_a_netflix
SET Title = LOWER(Title)

-- 넷플릭스 시청 시간 : 기준으로 지우기 
update what_we_watched_a_netflix 
set title = substring_index(title, ':', 1); 

-- 넷플릭스 시청 시간 // 기준으로 지우기 
update what_we_watched_a_netflix 
set title = substring_index(title, '//', 1);

-- 넷플릭스 시청 시간 특수문자, 숫자 제거 
UPDATE what_we_watched_a_netflix 
SET title  = REGEXP_REPLACE(title, '[^a-zA-Z]', '', 1, 0);

-- 넷플릭스 시청 시간 테이블 새로 만들기 > 시청 시간은 평균내고 글로벌이 YES인 것만 추출하기 
CREATE TABLE netfilx_hours_viewed
SELECT  title ,
          `Available Globally?` AS available_globally,
          AVG(`Hours Viewed`) AS hours_viewed 
FROM what_we_watched_a_netflix
WHERE `Available Globally?` = 'yes'
GROUP BY Title, `Available Globally?`

-- 확인용
SELECT *
FROM netfilx_hours_viewed nhv 





-- 확인용
SELECT *
FROM final_bollywood_and_hollywood

-- 수익, 예산, 순수익 테이블 타이틀 공백 제거하기 
UPDATE final_bollywood_and_hollywood 
SET Title = REPLACE (Title, ' ', '')  

-- 수익, 예산, 순수익 테이블 타이틀 소문자로 변경하기
  UPDATE final_bollywood_and_hollywood
  SET Title = LOWER(Title)
  
-- 수익, 예산, 순수익 : 기준으로 지우기 
update final_bollywood_and_hollywood
set title = substring_index(title, ':', 1); 

-- 수익, 예산, 순수익 // 기준으로 지우기 
update final_bollywood_and_hollywood 
set title = substring_index(title, '//', 1);

-- 수익, 예산, 순수익 특수문자, 숫자 제거 
UPDATE final_bollywood_and_hollywood  
SET title  = REGEXP_REPLACE(title, '[^a-zA-Z]', '', 1, 0);

-- 수익, 예산, 순수익 테이블 새로 만들기 >  타이틀별로 묶어서 평균내기 
CREATE TABLE bollywood_hollywood
SELECT title ,
          AVG(`Revenue($)`) AS revenue ,
          AVG(`Budget($)`) AS budget ,
          AVG(`Revenue($)` - `Budget($)`) AS revenue_budget
FROM final_bollywood_and_hollywood 
GROUP BY Title 

-- 확인용
SELECT *
FROM bollywood_hollywood bh 





-- 확인용 
SELECT *
FROM tv_show 

-- IMDB와 로튼 토마토 테이블 타이틀 공백 제거하기
UPDATE tv_show
SET Title = REPLACE (Title, ' ', '')

-- IMDB와 로튼 토마토 테이블 타이틀 소문자로 변경하기 
UPDATE tv_show
SET Title = LOWER(Title)

-- IMDB와 로튼 토마토 테이블 : 기준으로 지우기 
update tv_show
set title = substring_index(title, ':', 1);

-- IMDB와 로튼 토마토 테이블 // 기준으로 지우기 
update tv_show 
set title = substring_index(title, '//', 1);

-- IMDB와 로튼 토마토 테이블 특수문자, 숫자 제거 
UPDATE tv_show  
SET title  = REGEXP_REPLACE(title, '[^a-zA-Z]', '', 1, 0);

-- IMDB와 로튼 토마토 테이블 새로 만들기 > 타이틀 : 기준으로 자르고 imdb, rotten_tomatoes '/' 기준으로 자르기 
CREATE TABLE IMDB_rotten_tomatoes
SELECT title ,
          CASE WHEN instr(imdb, '/') THEN substring(imdb, 1, instr(imdb, '/')-1) 
                  ELSE imdb
          END AS imdb , 
          CASE WHEN instr(`Rotten Tomatoes`, '/') THEN substring(`Rotten Tomatoes`, 1, instr(`Rotten Tomatoes`, '/')-1) 
                  ELSE `Rotten Tomatoes`
          END AS rotten_tomatoes
FROM tv_show
GROUP BY Title , IMDb , `Rotten Tomatoes`

-- 확인용
SELECT *
FROM imdb_rotten_tomatoes irt 






-- 세 테이블 개수 116
SELECT bh.title 
FROM bollywood_hollywood bh JOIN netfilx_hours_viewed nhv ON bh.Title = nhv.title 
                                  JOIN imdb_rotten_tomatoes irt ON nhv.title = irt.title
GROUP BY bh.title 
ORDER BY 1
