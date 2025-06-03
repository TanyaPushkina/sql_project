
CREATE TABLE sale_copy1
AS
SELECT * FROM sale;


ALTER TABLE sale_copy1
ADD PRIMARY KEY (id),
ADD INDEX idx_sale_copy1_client (client_id),
ADD INDEX idx_sale_copy1_status (status_id),
ADD CONSTRAINT fk_sale_copy1_client FOREIGN KEY (client_id) REFERENCES client(id),
ADD CONSTRAINT fk_sale_copy1_status FOREIGN KEY (status_id) REFERENCES status(id);
