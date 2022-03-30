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
    image char(255),
    description char(255),
    category_id int not null,
    foreign key (category_id) references category(id)
);

insert into product (name, price, image, category_id) values ('Test beer', 15.00, 'C:/xampp/htdocs/verkkopalveluprojekti-backend/products/images/wheat-bottle-can.png', 1);
insert into product (name, price, category_id) values ('Test beer 1', 10.50, 1);
insert into product (name, price, category_id) values ('Test beer 2', 29.99, 2);
insert into product (name, price, category_id) values ('Test beer 3', 18.00, 3);
insert into product (name, price, category_id) values ('Test beer 4', 19.99, 4);