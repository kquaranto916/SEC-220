create table customers
(
    id        int auto_increment
        primary key,
    firstname varchar(20) null,
    lastname  varchar(20) null,
    store     varchar(20) null,
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
    constraint id
        unique (id),
    constraint orders_ibfk_1
        foreign key (customerId) references customers (id)
);

create index customerId
    on orders (customerId);

create table product_description
(
    id          int auto_increment
        primary key,
    products_id int not null,
    orders_id   int not null
);

create table product_type
(
    id          int auto_increment
        primary key,
    customer_id int not null,
    orders_id   int not null
);

create table product_types
(
    id          int auto_increment
        primary key,
    products_id int not null,
    orders_id   int not null
);

create table products
(
    id   int auto_increment
        primary key,
    type varchar(30) not null,
    constraint id
        unique (id)
);


