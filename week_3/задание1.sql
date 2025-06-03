SELECT 
    g.name AS good_name,
    c.name AS category_name
FROM 
    good g
INNER JOIN 
    category_has_good chg ON g.id = chg.good_id
INNER JOIN 
    category c ON chg.category_id = c.id
ORDER BY 
    g.name,
    c.name;