SELECT animal_id,
       name
FROM animal_ins
WHERE name LIKE '%el%' AND animal_type = 'dog'
ORDER BY name

# 개를 찾는다고 하는데 개를 빼고 조회하니 틀리지.. 문제 이해력 부족이다 
