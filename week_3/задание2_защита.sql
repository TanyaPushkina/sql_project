-- Создание таблицы по образцу sale
CREATE TABLE sale_copy LIKE sale;

-- Копирование данных
INSERT INTO sale_copy SELECT * FROM sale;

-- Восстановление внешних ключей
ALTER TABLE sale_copy
ADD CONSTRAINT fk_sale_copy_client FOREIGN KEY (client_id) REFERENCES client(id),
ADD CONSTRAINT fk_sale_copy_status FOREIGN KEY (status_id) REFERENCES status(id);
