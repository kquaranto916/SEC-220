CREATE DATABASE Store;
USE Store;
create table customers
(
    id        int auto_increment
        primary key,
    firstname varchar(20) null,
    lastname  varchar(20) null,
    store     varchar(20) null,
    custnum   int null,
    constraint id
        unique (id)
);

create table orders
(
    id         int auto_increment
        primary key,
    product    varchar(20) null,
    cost       int         null,
    customerId int         null,
    foreign key (customerId) references customers(id),
    constraint id
        unique (id),
    constraint orders_ibfk_3
        foreign key (customerId) references customers(id)
);

create index customerId
    on orders (customerId);

create table products
(
    id int auto_increment
        primary key,
    type varchar(20) null,
    constraint id
        unique (id)
);

CREATE TABLE product_orders
(
    id  int auto_increment
        primary key,
    order_id int not null,
    product_id int not null,
    constraint id
        unique (id)
);

INSERT INTO customers (firstname, lastname, store, custnum) VALUES ( 'Kimmie', 'Quaranto', 'Target', 119);
INSERT INTO customers (firstname, lastname, store, custnum) VALUES ( 'Olivia', 'Brown', 'Stop and Shop', 121);
INSERT INTO customers (firstname, lastname, store, custnum) VALUES ( 'Liz', 'Peters', 'Walmart', 423);

INSERT INTO orders (product, cost, customerId) VALUES ('Goldfish', '5', 1);
INSERT INTO orders (product, cost, customerId) VALUES ('Shampoo', '14', 1);
INSERT INTO orders (product, cost, customerId) VALUES ('Granola Bars', '8', 1);
INSERT INTO orders (product, cost, customerId) VALUES ('Cheese', '6', 2);
INSERT INTO orders (product, cost, customerId) VALUES ('Ice Cream', '7', 2);
INSERT INTO orders (product, cost, customerId) VALUES ('Muffins', '4.50', 2);
INSERT INTO orders (product, cost, customerId) VALUES ('Salsa', '5.75', 3);
INSERT INTO orders (product, cost, customerId) VALUES ('Chips', '4', 3);
INSERT INTO orders (product, cost, customerId) VALUES ('Pot Pie', '10', 3);

INSERT INTO products (type) VALUES ('Crackers/Chips');
INSERT INTO products (type) VALUES ('Hygiene');
INSERT INTO products (type) VALUES ('Snacks');
INSERT INTO products (type) VALUES ('Dairy');
INSERT INTO products (type) VALUES ('Frozen');
INSERT INTO products (type) VALUES ('Dips');

insert into product_orders(order_id, product_id) VALUES (21,1);
insert into product_orders(order_id, product_id) VALUES (40,2);
insert into product_orders(order_id, product_id) VALUES (82,3);
insert into product_orders(order_id, product_id) VALUES (12,4);
insert into product_orders(order_id, product_id) VALUES (43,5);
insert into product_orders(order_id, product_id) VALUES (37,4);
insert into product_orders(order_id, product_id) VALUES (52,6);
insert into product_orders(order_id, product_id) VALUES (23,1);
insert into product_orders(order_id, product_id) VALUES (66,5);

select product, cost from orders;
select product_id, order_id from product_orders;
select lastname, store, custnum from customers;

SELECT * from orders;
SELECT * from customers;
SELECT * from products;
SELECT * from product_orders;

