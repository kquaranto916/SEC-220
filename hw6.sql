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

create table products
(
    type varchar(25) not null,
    id   int         not null,
    primary key (type, id)
);

create table product_orders
(
    num          int auto_increment
        primary key,
    product_type varchar(25) not null,
    product_id   int         not null,
    customer_id  int         not null,
    constraint product_orders_ibfk_1
        foreign key (product_type, product_id) references products (type, id),
    constraint product_orders_ibfk_2
        foreign key (customer_id) references customers (id)
);

create index customer_id
    on product_orders (customer_id);

create index product_type
    on product_orders (product_type, product_id);


