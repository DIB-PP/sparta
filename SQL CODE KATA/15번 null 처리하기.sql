SELECT animal_type,
       IF(name IS NULL, 'No name', name),
       sex_upon_intake
FROM animal_ins
ORDER BY animal_id

# https://inpa.tistory.com/entry/MYSQL-%F0%9F%93%9A-%EC%A0%9C%EC%96%B4%EB%AC%B8#if%EB%AC%B8 IF문 참고 블로그
