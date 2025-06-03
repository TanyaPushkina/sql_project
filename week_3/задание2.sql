SELECT
    c.first_name,
    c.last_name,
    COUNT(s.id) AS new_sale_num
FROM client c
JOIN sale s ON c.id = s.client_id
JOIN status st ON s.status_id = st.id
WHERE st.name = 'new'
GROUP BY c.first_name, c.last_name
ORDER BY new_sale_num DESC;

