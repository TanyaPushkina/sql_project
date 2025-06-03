CREATE TABLE source (
    id INT NOT NULL PRIMARY KEY,
    name VARCHAR(255)
);
ALTER TABLE client
ADD COLUMN source_id INT,
ADD CONSTRAINT fk_client_source1 FOREIGN KEY (source_id) REFERENCES source(id);
