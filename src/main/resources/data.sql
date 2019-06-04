DROP TABLE IF EXISTS inventory;
DROP TABLE IF EXISTS warehouse;
DROP TABLE IF EXISTS product;

CREATE TABLE inventory (
  id INT AUTO_INCREMENT  PRIMARY KEY,
  quantity INT NOT NULL
);

CREATE TABLE warehouse (
  id INT AUTO_INCREMENT  PRIMARY KEY,
  locality VARCHAR(250) NOT NULL,
  quantity INT NOT NULL,
  type VARCHAR(30) NOT NULL,
  inventory_id INT NOT NULL,
  foreign key (inventory_id) references inventory(id)
);

CREATE TABLE product (
  id INT AUTO_INCREMENT  PRIMARY KEY,
  sku INT NOT NULL,
  name VARCHAR(30) NOT NULL,
  is_marketable BOOLEAN NOT NULL,
  inventory_id INT NOT NULL,
  foreign key (inventory_id) references inventory(id)
);