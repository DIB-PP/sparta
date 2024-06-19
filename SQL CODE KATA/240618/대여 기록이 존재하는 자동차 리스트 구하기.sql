SELECT DISTINCT(car.car_id)
FROM car_rental_company_rental_history AS history LEFT JOIN car_rental_company_car AS car ON history.car_id = car.car_id
WHERE car.car_type = '세단'
    AND DATE_FORMAT(history.start_date, '%m') = '10'
ORDER BY car.car_id DESC
