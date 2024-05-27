SELECT outs.animal_id
     , outs.name
FROM animal_outs AS outs LEFT JOIN animal_ins AS ins ON outs.animal_id = ins.animal_id
ORDER BY DATEDIFF(outs.datetime, ins.datetime) DESC
LIMIT 2
