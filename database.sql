drop database if exists opisk_n1tuno00;

create database opisk_n1tuno00;

use opisk_n1tuno00;

create table tuoteryhma (
    trnro int primary key not null AUTO_INCREMENT,
    trnimi char(30) unique not null
);

create table tuote (
    tuotenro int primary key not null AUTO_INCREMENT,
    tuotenimi char(30) unique not null,
    hinta DECIMAL(5,2) not null,
    kuva char(50) not null,
    kuvaus char(255) not null,
    trnro int not null,
    foreign key (trnro) references tuoteryhma(trnro)
);