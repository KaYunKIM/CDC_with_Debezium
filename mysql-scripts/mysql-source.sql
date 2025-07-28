docker exec -it mysql_source bash

mysql -u root -p

CREATE DATABASE sourcedb;
use sourcedb;

GRANT ALL PRIVILEGES ON *.* TO 'mysqlsource'@'%';
FLUSH PRIVILEGES;


CREATE TABLE employee (
  id VARCHAR(255),
  name VARCHAR(255),
  salary VARCHAR(255),
  PRIMARY KEY (id)
);

INSERT INTO employee (id, name, salary) VALUES
('1', 'Alice', '10000'),
('2', 'Bob', '20000');


-- INSERT
INSERT INTO employee (id, name, salary) VALUES
('3', 'Celine', '30000'),
('4', 'David', '40000');

-- UPDATE
UPDATE employee
SET salary = '50000'
WHERE id = '4';

-- DELETE
DELETE FROM employee
WHERE id IN ('3', '4');