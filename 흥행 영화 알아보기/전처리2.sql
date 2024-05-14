-- 인셉션 영화 장르 
SELECT i.TotalVotes,
          i.Title,
          GROUP_CONCAT(g.genre) AS genre
FROM IMDB i LEFT JOIN genre g  ON i.Movie_id = g.Movie_id 
WHERE( g.genre , i.TotalVotes ) IN ( SELECT g.genre ,
                                                        MAX(i.TotalVotes)
                                              FROM IMDB i LEFT JOIN genre g  ON i.Movie_id = g.Movie_id 
                                              GROUP BY g.genre )  -- WHERE절에 서브쿼리로 i.totalvotes가 제일 높은 값이 나올 수 있도록 묶음
          AND i.Title LIKE '%inception%'
GROUP BY i.Title 
ORDER BY 1;




-- 인셉션 영화 예산
SELECT TITLE,
          Budget 
FROM IMDB
WHERE Title LIKE '%INCEPTION%'


-- 인셉션 영화 런타임
SELECT TITLE,
          runtime
FROM IMDB
WHERE Title LIKE '%INCEPTION%'

-- 인셉션 영화 장르
SELECT i.Title,
          GROUP_CONCAT(g.genre) AS genre
FROM IMDB i 
         LEFT JOIN genre g 
         ON i.Movie_id = g.Movie_id 
WHERE i.Title LIKE '%inception%'  

-- 인셉션 영화 평점
SELECT TITLE,
          Rating 
FROM IMDB
WHERE Title LIKE '%INCEPTION%'



--

SELECT i.Title ,genre, i.TotalVotes
FROM IMDB i,
	 (select Movie_id , group_concat (genre) genre
	  from genre g 
	  group by Movie_id) c
WHERE 1=1
	  and i.Movie_id = c.movie_id
ORDER BY i.TotalVotes  desc;



-- 장르별 영화 러닝타임 평균 
SELECT g.genre , 
          ROUND(AVG(i.runtime), 1)
FROM IMDB i LEFT JOIN genre g  ON i.Movie_id = g.Movie_id 
GROUP BY 1
ORDER BY 2;


-- 관객 수 50만명 별 영화 평균 예산 
SELECT "영화별 관객 수",
          ROUND(AVG(budget), 0) AS '평균 예산'
FROM ( SELECT title,
                     SUM(TotalVotes) AS TotalVotes,
                     CASE WHEN SUM(TotalVotes) < 100000 THEN '10만 미만'
                            WHEN SUM(TotalVotes) >= 100000 AND SUM(TotalVotes) < 500000 THEN '10만 이상 50만 미만'
                            WHEN SUM(TotalVotes) >= 500000 AND SUM(TotalVotes) < 1000000 THEN '50만 이상 100만 미만'
                            WHEN SUM(TotalVotes) >= 1000000 THEN '100만 이상'
                            ELSE '확인불가'
                     END AS '영화별 관객 수',
                     budget
           FROM IMDB
           GROUP BY title
           ORDER BY 2 ) guide
GROUP BY "영화별 관객 수"
ORDER BY "평균 예산";


--
SELECT *
FROM IMDB i 

--
SELECT i.Title,
       i.TotalVotes,
       g.genre
FROM IMDB i join genre g on i.Movie_id = g.Movie_id
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10;
