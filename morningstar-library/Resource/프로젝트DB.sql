drop database if exists morningstar_bookstore;
create database morningstar_bookstore;

use morningstar_bookstore;

drop table if exists book;
create table book(
   ISBN varchar(15),
   bookName varchar(50),
   author varchar(20),
   publisher varchar(20),
   releaseDate date,
   description varchar(500),
   page int,
   bookImg text,
   category int,
   primary key(ISBN)
);

drop table if exists inventory;
create table inventory(
   ISBN varchar(15),
   inventory int,
   salesVolume int,
   price int,   
   primary key(ISBN)
);

drop table if exists user;
create table user(
   userID varchar(10),
   userPW varchar(150),
   name varchar(10),
   managerMod boolean,
   email varchar(50),
   deliveryAddress varchar(150),
   primary key(userID)
);

drop table if exists sale;
create table sale(
   orderID int,
   userID varchar(10),
   orderDate date,
   deliveryAddress varchar(150),
   totalAmount int,
   primary key(orderID)
);

drop table if exists orderList;
create table orderList(
   orderID int,
   ISBN varchar(15),
   count int
);

drop table if exists review;
create table review(
   userID varchar(10),
   ISBN varchar(15),
   rating int,
   content varchar(250),
   primary key(userID, ISBN)
);

drop table if exists cart;
create table cart(
   userID varchar(10),
   ISBN varchar(15),
   bookCount int
);

drop table if exists orderHistory;
create table orderHistory(
   orderID int,
   orderDate date,
   primary key (orderID),
   FOREIGN KEY (orderID) REFERENCES sale(orderID)
);

drop table if exists managerOrder;
create table managerOrder(
   userID varchar(10),
   managerOrderID int,
   orderDate date,
   primary key (managerOrderID)
);

drop table if exists bookOfManagerOrder;
create table bookOfManagerOrder(
   managerOrderID int,
   ISBN varchar(15),
   primary key (managerOrderID)
);