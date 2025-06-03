-- Товары из категории 'Cakes'
SELECT g.name AS good_name
FROM good g
JOIN category_has_good chg ON g.id = chg.good_id
JOIN category c ON chg.category_id = c.id
WHERE c.name = 'Cakes'

UNION

-- Товары из заказов со статусом 'delivering'
SELECT g.name AS good_name
FROM good g
JOIN sale_has_good shg ON g.id = shg.good_id
JOIN sale s ON shg.sale_id = s.id
JOIN status st ON s.status_id = st.id
WHERE st.name = 'delivering';
