SELECT 
    c.name AS name,
    COUNT(shg.good_id) AS sale_num
FROM category c
JOIN category_has_good chg ON c.id = chg.category_id
JOIN good g ON chg.good_id = g.id
JOIN sale_has_good shg ON g.id = shg.good_id
GROUP BY c.name;

