create table class
(
    id            int auto_increment
        primary key,
    class_name    varchar(20) null,
    class_subject varchar(20) null,
    constraint id
        unique (id)
);

create table student_address
(
    id      int auto_increment
        primary key,
    address varchar(40) null,
    town    varchar(15) null,
    zip     smallint    null,
    constraint id
        unique (id)
);

create table student_class
(
    id          int auto_increment,
    students_id int not null,
    class_id    int not null,
    constraint id
        unique (id)
);

create table students
(
    id         int auto_increment
        primary key,
    firstname  varchar(15) null,
    lastname   varchar(15) null,
    address_id int         null,
    constraint id
        unique (id),
    constraint students_ibfk_1
        foreign key (address_id) references student_address (id)
);

create index address_id
    on students (address_id);


