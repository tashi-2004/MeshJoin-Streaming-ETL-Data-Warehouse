-- Drop existing schema and create a new one
drop schema if exists tashi_dw;
create schema tashi_dw;
use tashi_dw;

-- Drop existing tables if they exist
drop table if exists transactions;
drop table if exists customers;
drop table if exists time;
drop table if exists products;
drop table if exists store;
drop table if exists supplier;
drop table if exists orders;

-- Product table
create table products (productid integer primary key,productName text not null,productPrice real);

-- Customer table
create table customers (customer_id integer primary key,customer_name text not null,gender text);

-- Store table
create table store (storeID integer  primary key,storeName text);

-- Supplier table
create table supplier (supplierID integer primary key,supplierName text);

-- orders table
create table orders (Order_ID integer primary key,Order_Date datetime);

-- Fact table
create table transactions (Transaction_ID integer primary key, productid integer,customer_id integer,time_id integer,storeID integer,supplierID integer, Order_ID integer,
Sales decimal,Quantity_Ordered int,foreign key (productid) references products(productid),foreign key (customer_id) references customers(customer_id),
foreign key (storeID) references store(storeID),foreign key (supplierID) references supplier(supplierID),
foreign key (Order_ID) references orders(Order_ID));
    
