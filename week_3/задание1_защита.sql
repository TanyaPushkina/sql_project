-- Способ 2: вручную описываем структуру с ключами и копируем данные через SELECT
CREATE TABLE sale_copy2 (
    id INT PRIMARY KEY,
    client_id INT,
    number VARCHAR(255),
    dt_created DATETIME,
    dt_modified DATETIME,
    sale_sum DECIMAL(18,2),
    status_id INT,
    
    KEY idx_client_id (client_id),
    KEY idx_status_id (status_id),
    
    CONSTRAINT fk_sale_copy2_client FOREIGN KEY (client_id) REFERENCES client(id),
    CONSTRAINT fk_sale_copy2_status FOREIGN KEY (status_id) REFERENCES status(id)
);

INSERT INTO sale_copy2
SELECT * FROM sale;
