-- 2010년에서 2016년까지 흥행 영화 중 가장 많이 본 영화
SELECT Title,
          TotalVotes
FROM IMDB i LEFT JOIN genre g  ON i.Movie_id = g.Movie_id 
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10;


-- 2010년에서 2016년까지 흥행 영화 중 남성, 여성이 가장 많이 본 영화
SELECT Title,
          CAST(CVotesMale AS decimal),
          CAST(CVotesFemale AS decimal) 
FROM IMDB 
GROUP BY 1
ORDER BY 3 DESC
LIMIT 10;


-- 2010년에서 2016년까지 흥행 영화 중 여성이 가장 많이 본 영화
SELECT Title,
          TotalVotes,
          CAST(CVotesMale AS decimal),
          CAST(CVotesFemale AS decimal) 
FROM IMDB 
GROUP BY 1
ORDER BY 4 DESC;
