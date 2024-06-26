SELECT half.flavor
FROM first_half AS half LEFT JOIN icecream_info AS info ON half.flavor = info.flavor
WHERE half.total_order > 3000
    AND info.ingredient_type = 'fruit_based'
