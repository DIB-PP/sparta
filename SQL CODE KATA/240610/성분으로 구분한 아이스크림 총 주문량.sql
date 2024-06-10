SELECT info.ingredient_type
     , SUM(half.total_order) AS total_order
FROM first_half AS half LEFT JOIN icecream_info AS info ON half.flavor = info.flavor
GROUP BY info.ingredient_type
