drop database if exists webshop;

create database webshop;

use webshop;

create table category (
    id int primary key not null AUTO_INCREMENT,
    name char(30) unique not null
);

insert into category (name) values ('Lager');
insert into category (name) values ('Pale Ale');
insert into category (name) values ('Pils');
insert into category (name) values ('Wheat beer');

create table product (
    id int primary key not null AUTO_INCREMENT,
    name char(50) unique not null,
    price DECIMAL(5,2) not null,
    image char(100),
    description char(255),
    category_id int not null,
    foreign key (category_id) references category(id)
);

insert into product (name, price, image, category_id) values ('Test beer 1', 15.00, 'wheat-bottle-can.png', 1);
insert into product (name, price, image, category_id) values ('Test beer 2', 10.50, 'wheat-bottle-can.png', 1);
insert into product (name, price, image, category_id) values ('Test beer 3', 29.99, 'wheat-bottle-can.png', 2);
insert into product (name, price, image, category_id) values ('Test beer 4', 18.00, 'wheat-bottle-can.png', 3);
insert into product (name, price, image, category_id) values ('Test beer 5', 19.99, 'wheat-bottle-can.png', 4);
insert into product (name, price, image, category_id) values ('Test beer 6', 9.99, 'wheat-bottle-can-png', 1);

create table customer (
    id int primary key not null AUTO_INCREMENT,
    email char(255) unique not null,
    pw char(255) not null,
    fname char(30) not null,
    lname char(50) not null,
    streetname char(50) not null,
    housenumber char(10) not null,
    zip char(5) not null,
    city char(30) not null,
    phonenumber char(10) not null
)