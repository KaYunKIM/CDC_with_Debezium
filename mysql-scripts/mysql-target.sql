docker exec -it mysql_target bash

mysql -u root -p

CREATE DATABASE targetdb;
use targetdb;

GRANT ALL PRIVILEGES ON *.* TO 'mysqltarget'@'%';
FLUSH PRIVILEGES;


CREATE TABLE employee (
  id VARCHAR(255),
  name VARCHAR(255),
  salary VARCHAR(255),
  PRIMARY KEY (id)
);