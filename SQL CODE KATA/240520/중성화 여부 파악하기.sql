SELECT animal_id
     , name
     , IF(sex_upon_intake IN ('Neutered Male', 'Spayed Female'), 'O', 'X') AS '중성화'
FROM animal_ins
