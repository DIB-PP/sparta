SELECT dr_name,
       dr_id,
       mcdp_cd,
       DATE_FORMAT(hire_ymd, '%Y-%m-%d') AS hire_ymd
FROM doctor
WHERE mcdp_cd = 'CS' OR mcdp_cd = 'GS'
ORDER BY hire_ymd DESC , dr_name ASC

# https://inforyou.tistory.com/28 OR 함수 참고 블로그 
# 문제에 고용일자가 같다면 이름을 기준으로 오름차순인데 id 기준으로 오름차순해서 틀렸다고 이상하다고 생각했다 문제 제대로 안보는 거 못 고쳤네
