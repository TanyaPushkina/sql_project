SELECT 
    s.name AS source_name,
    COALESCE(SUM(sa.sale_sum), 0) AS sale_sum
FROM 
    source s
LEFT JOIN 
    client c ON s.id = c.source_id
LEFT JOIN 
    sale sa ON c.id = sa.client_id
GROUP BY 
    s.name;
