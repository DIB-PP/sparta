SELECT car_id
     , CASE WHEN COUNT(CASE WHEN start_date <= '2022-10-16' AND end_date >= '2022-10-16' THEN 1
                            ELSE NULL END) > 0 THEN '대여중'
            ELSE '대여 가능'
       END AS AVAILABILITY
FROM car_rental_company_rental_history
GROUP BY car_id
ORDER BY car_id DESC
