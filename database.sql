drop database if exists verkkokauppa;

create database verkkokauppa;

use verkkokauppa;

create table tuoteryhma (
    trnro int primary key not null AUTO_INCREMENT,
    trnimi char(30) unique not null
);

insert into tuoteryhma (trnimi) values ('Pils');
insert into tuoteryhma (trnimi) values ('Pale Ale');
insert into tuoteryhma (trnimi) values ('Wheat beer');
insert into tuoteryhma (trnimi) values ('Lager');

create table tuote (
    tuotenro int primary key not null AUTO_INCREMENT,
    tuotenimi char(30) unique not null,
    hinta DECIMAL(5,2) not null,
    kuva char(50),
    kuvaus char(255),
    trnro int not null,
    foreign key (trnro) references tuoteryhma(trnro)
);

insert into tuote (tuotenimi, hinta, trnro) values ('Kalja', 10.10, 1);
insert into tuote (tuotenimi, hinta, trnro) values ('Jee', 10.10, 1);
