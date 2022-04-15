USE Store;

INSERT INTO products (type) VALUES ('Makeup');
INSERT INTO products (type) VALUES ('Fruit');
INSERT INTO products (type) VALUES ('Veggies');

DELETE FROM products where type = 'Makeup';
DELETE FROM products where type = 'Fruit';
DELETE FROM products where type = 'Veggies';
DELETE FROM products where type in ('Makeup', 'Fruit', 'Veggies');

SELECT * from orders;
SELECT * from customers;
SELECT * from products;
SELECT * from product_orders;

SELECT orders.product, orders.customerId, orders.cost, customers.custnum
FROM orders
INNER JOIN customers on orders.customerId = customers.id;

SELECT orders.product, orders.customerId, orders.cost, customers.custnum
FROM orders
INNER JOIN customers on orders.customerId = customers.id
WHERE custnum = 119;

SELECT orders.product, orders.customerId, orders.cost, customers.custnum
FROM orders
INNER JOIN customers on orders.customerId = customers.id
WHERE cost > 5;