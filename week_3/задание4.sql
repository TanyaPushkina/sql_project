-- 1. Товары и категории (в том числе без категории)
SELECT 
    g.name AS good_name,
    c.name AS category_name
FROM good g
LEFT JOIN category_has_good chg ON g.id = chg.good_id
LEFT JOIN category c ON chg.category_id = c.id

UNION

-- 2. Категории без товаров
SELECT 
    NULL AS good_name,
    c.name AS category_name
FROM category c
LEFT JOIN category_has_good chg ON c.id = chg.category_id
WHERE chg.good_id IS NULL

ORDER BY good_name, category_name;