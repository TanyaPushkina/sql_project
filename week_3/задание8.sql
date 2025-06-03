-- 1. Источники, у которых нет клиентов
SELECT s.name AS source_name
FROM source s
LEFT JOIN client c ON s.id = c.source_id
WHERE c.id IS NULL

UNION

-- 2. Источники, у которых есть клиенты, но нет заказов
SELECT s.name AS source_name
FROM source s
JOIN client c ON s.id = c.source_id
LEFT JOIN sale sa ON c.id = sa.client_id
WHERE sa.id IS NULL

UNION

-- 3. Источники, у которых все заказы имеют статус 'rejected'
SELECT s.name AS source_name
FROM source s
JOIN client c ON s.id = c.source_id
JOIN sale sa ON c.id = sa.client_id
JOIN status st ON sa.status_id = st.id
GROUP BY s.name
HAVING SUM(st.name <> 'rejected') = 0;