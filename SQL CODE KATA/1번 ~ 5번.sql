# 이름이 있는 동물의 아이디 
SELECT animal_id
FROM animal_ins
WHERE name IS NOT NULL

# 역순 정렬하기
SELECT name,
       datetime
FROM animal_ins
ORDER BY animal_id DESC 
## https://gomguard.tistory.com/93 ORDER BY 역순 참고 블로그 

# 중복 제거하기
SELECT COUNT(DISTINCT(name))
FROM animal_ins
WHERE name IS NOT NULL 
## https://gent.tistory.com/439 중복 제거 참고 블로그

# 동물의 아이디와 이름
SELECT animal_id,
       name
FROM animal_ins 
ORDER BY animal_id 

# 동물 수 구하기
SELECT COUNT(animal_id)
FROM animal_ins
