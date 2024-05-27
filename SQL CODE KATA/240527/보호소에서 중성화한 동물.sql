SELECT ins.animal_id
     , ins.animal_type
     , ins.name
FROM animal_ins AS ins JOIN animal_outs AS outs ON ins.animal_id = outs.animal_id
WHERE ins.sex_upon_intake LIKE 'intact%'
    AND outs.sex_upon_outcome IN ('spayed female', 'neutered male')
ORDER BY ins.animal_id
