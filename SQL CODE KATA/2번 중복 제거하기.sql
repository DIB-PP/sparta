SELECT COUNT(DISTINCT(name))
FROM animal_ins
WHERE name IS NOT NULL 
  
# https://gent.tistory.com/439 중복 제거 참고 블로그
