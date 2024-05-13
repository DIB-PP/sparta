SELECT name
     , COUNT(name)
FROM animal_ins
WHERE name IS NOT NULL
GROUP BY name
HAVING COUNT(name) > 1
ORDER BY name
