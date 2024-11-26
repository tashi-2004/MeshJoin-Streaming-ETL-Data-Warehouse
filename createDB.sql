-- Drop existing schema and create a new one
drop schema if exists tashi_db;
create schema tashi_db;
use tashi_db;

-- Drop existing tables if they exist
drop table if exists customers;
drop table if exists products;

-- customers table
create table customers (customer_id integer primary key,customer_name text not null,gender text);
-- products table
create table products ( productid integer primary key, productName text not null, productPrice real, supplierID integer, supplierName text, storeID integer, storeName text);

-- In Customers
insert into customers (customer_id, customer_name, gender) values (17, 'Ethan Martin', 'Male');
insert into customers (customer_id, customer_name, gender) values (50, 'Penelope Reed', 'Female');
insert into customers (customer_id, customer_name, gender) values (94, 'Eleanor Stewart', 'Female');
insert into customers (customer_id, customer_name, gender) values (80, 'Caroline Morgan', 'Female');
insert into customers (customer_id, customer_name, gender) values (20, 'Amelia Gonzalez', 'Female');
insert into customers (customer_id, customer_name, gender) values (85, 'Wyatt Alexander', 'Male');
insert into customers (customer_id, customer_name, gender) values (55, 'Jonathan Bailey', 'Male');
insert into customers (customer_id, customer_name, gender) values (45, 'Gabriel Ramirez', 'Male');
insert into customers (customer_id, customer_name, gender) values (67, 'Adam James', 'Male');
insert into customers (customer_id, customer_name, gender) values (23, 'Alexander Walker', 'Male');
insert into customers (customer_id, customer_name, gender) values (27, 'Henry Scott', 'Male');
insert into customers (customer_id, customer_name, gender) values (82, 'Savannah Howard', 'Female');
insert into customers (customer_id, customer_name, gender) values (4, 'Emily Brown', 'Female');
insert into customers (customer_id, customer_name, gender) values (12, 'Mia Taylor', 'Female');
insert into customers (customer_id, customer_name, gender) values (2, 'Jane Smith', 'Female');
insert into customers (customer_id, customer_name, gender) values (48, 'Zoe Morris', 'Female');
insert into customers (customer_id, customer_name, gender) values (69, 'Jack Ross', 'Male');
insert into customers (customer_id, customer_name, gender) values (37, 'David Roberts', 'Male');
insert into customers (customer_id, customer_name, gender) values (76, 'Audrey Perry', 'Female');
insert into customers (customer_id, customer_name, gender) values (64, 'Nora Hughes', 'Female');
insert into customers (customer_id, customer_name, gender) values (75, 'Isaac Jenkins', 'Male');
insert into customers (customer_id, customer_name, gender) values (53, 'Christian Bell', 'Male');
insert into customers (customer_id, customer_name, gender) values (66, 'Luna Flores', 'Female');
insert into customers (customer_id, customer_name, gender) values (71, 'Owen Foster', 'Male');
insert into customers (customer_id, customer_name, gender) values (34, 'Lily Carter', 'Female');
insert into customers (customer_id, customer_name, gender) values (54, 'Aubrey Cooper', 'Female');
insert into customers (customer_id, customer_name, gender) values (59, 'Isaiah Howard', 'Male');
insert into customers (customer_id, customer_name, gender) values (100, 'Genesis Mitchell', 'Female');
insert into customers (customer_id, customer_name, gender) values (36, 'Evelyn Perez', 'Female');
insert into customers (customer_id, customer_name, gender) values (65, 'Joseph Peterson', 'Male');
insert into customers (customer_id, customer_name, gender) values (78, 'Ariana Peterson', 'Female');
insert into customers (customer_id, customer_name, gender) values (32, 'Chloe Nelson', 'Female');
insert into customers (customer_id, customer_name, gender) values (31, 'Matthew Adams', 'Male');
insert into customers (customer_id, customer_name, gender) values (61, 'Thomas Brooks', 'Male');
insert into customers (customer_id, customer_name, gender) values (87, 'Luke Butler', 'Male');
insert into customers (customer_id, customer_name, gender) values (35, 'Samuel Mitchell', 'Male');
insert into customers (customer_id, customer_name, gender) values (74, 'Claire Long', 'Female');
insert into customers (customer_id, customer_name, gender) values (52, 'Victoria Morgan', 'Female');
insert into customers (customer_id, customer_name, gender) values (60, 'Riley Ward', 'Female');
insert into customers (customer_id, customer_name, gender) values (95, 'Sean Ramirez', 'Male');
insert into customers (customer_id, customer_name, gender) values (26, 'Abigail King', 'Female');
insert into customers (customer_id, customer_name, gender) values (72, 'Mila Powell', 'Female');
insert into customers (customer_id, customer_name, gender) values (91, 'Brandon Ward', 'Male');
insert into customers (customer_id, customer_name, gender) values (28, 'Madison Wright', 'Female');
insert into customers (customer_id, customer_name, gender) values (63, 'Aaron Gray', 'Male');
insert into customers (customer_id, customer_name, gender) values (8, 'Sophia Davis', 'Female');
insert into customers (customer_id, customer_name, gender) values (42, 'Hannah Turner', 'Female');
insert into customers (customer_id, customer_name, gender) values (79, 'Levi Cox', 'Male');
insert into customers (customer_id, customer_name, gender) values (7, 'James Miller', 'Male');
insert into customers (customer_id, customer_name, gender) values (38, 'Grace Campbell', 'Female');
insert into customers (customer_id, customer_name, gender) values (3, 'Michael Johnson', 'Male');
insert into customers (customer_id, customer_name, gender) values (16, 'Emma Harris', 'Female');
insert into customers (customer_id, customer_name, gender) values (86, 'Sofia Simmons', 'Female');
insert into customers (customer_id, customer_name, gender) values (68, 'Ellie Sanders', 'Female');
insert into customers (customer_id, customer_name, gender) values (29, 'Sebastian Green', 'Male');
insert into customers (customer_id, customer_name, gender) values (25, 'Daniel Allen', 'Male');
insert into customers (customer_id, customer_name, gender) values (19, 'Mason Garcia', 'Male');
insert into customers (customer_id, customer_name, gender) values (98, 'Paisley Roberts', 'Female');
insert into customers (customer_id, customer_name, gender) values (88, 'Hazel Hayes', 'Female');
insert into customers (customer_id, customer_name, gender) values (15, 'Lucas White', 'Male');
insert into customers (customer_id, customer_name, gender) values (83, 'Dylan Patterson', 'Male');
insert into customers (customer_id, customer_name, gender) values (81, 'Connor Bryant', 'Male');
insert into customers (customer_id, customer_name, gender) values (24, 'Ella Young', 'Female');
insert into customers (customer_id, customer_name, gender) values (13, 'Noah Moore', 'Male');
insert into customers (customer_id, customer_name, gender) values (51, 'Ryan Cook', 'Male');
insert into customers (customer_id, customer_name, gender) values (49, 'Nathan Rogers', 'Male');
insert into customers (customer_id, customer_name, gender) values (6, 'Olivia Martinez', 'Female');
insert into customers (customer_id, customer_name, gender) values (33, 'Aiden Hill', 'Male');
insert into customers (customer_id, customer_name, gender) values (93, 'Cole Flores', 'Male');
insert into customers (customer_id, customer_name, gender) values (1, 'John Doe', 'Male');
insert into customers (customer_id, customer_name, gender) values (92, 'Aurora Carter', 'Female');
insert into customers (customer_id, customer_name, gender) values (41, 'Caleb Edwards', 'Male');
insert into customers (customer_id, customer_name, gender) values (11, 'Liam Anderson', 'Male');
insert into customers (customer_id, customer_name, gender) values (56, 'Addison Rivera', 'Female');
insert into customers (customer_id, customer_name, gender) values (90, 'Violet Morales', 'Female');
insert into customers (customer_id, customer_name, gender) values (58, 'Layla Cox', 'Female');
insert into customers (customer_id, customer_name, gender) values (9, 'Benjamin Wilson', 'Male');
insert into customers (customer_id, customer_name, gender) values (39, 'Elijah Phillips', 'Male');
insert into customers (customer_id, customer_name, gender) values (44, 'Samantha Collins', 'Female');
insert into customers (customer_id, customer_name, gender) values (57, 'Hunter Richardson', 'Male');
insert into customers (customer_id, customer_name, gender) values (18, 'Charlotte Thompson', 'Female');
insert into customers (customer_id, customer_name, gender) values (62, 'Lillian Diaz', 'Female');
insert into customers (customer_id, customer_name, gender) values (77, 'Julian Coleman', 'Male');
insert into customers (customer_id, customer_name, gender) values (96, 'Scarlett Price', 'Female');
insert into customers (customer_id, customer_name, gender) values (70, 'Naomi Price', 'Female');
insert into customers (customer_id, customer_name, gender) values (99, 'Dominic Ross', 'Male');
insert into customers (customer_id, customer_name, gender) values (40, 'Zoey Evans', 'Female');
insert into customers (customer_id, customer_name, gender) values (84, 'Camila Phillips', 'Female');
insert into customers (customer_id, customer_name, gender) values (5, 'William Garcia', 'Male');
insert into customers (customer_id, customer_name, gender) values (30, 'Scarlett Baker', 'Female');
insert into customers (customer_id, customer_name, gender) values (97, 'Ryder Gomez', 'Male');
insert into customers (customer_id, customer_name, gender) values (10, 'Ava Thomas', 'Female');
insert into customers (customer_id, customer_name, gender) values (21, 'Jacob Clark', 'Male');
insert into customers (customer_id, customer_name, gender) values (14, 'Isabella Lee', 'Female');
insert into customers (customer_id, customer_name, gender) values (43, 'Andrew Torres', 'Male');
insert into customers (customer_id, customer_name, gender) values (22, 'Harper Lewis', 'Female');
insert into customers (customer_id, customer_name, gender) values (73, 'Lucas Reed', 'Male');
insert into customers (customer_id, customer_name, gender) values (46, 'Aria Stewart', 'Female');
insert into customers (customer_id, customer_name, gender) values (47, 'Joshua Sanchez', 'Male');
insert into customers (customer_id, customer_name, gender) values (89, 'Brayden Griffin', 'Male');
-- In products
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (2, 'Dell XPS 13 Laptop', 1299.99, 2, 'Dell Technologies', 2, 'Tech Haven');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (21, 'DJI Mavic Air 2 Drone', 799.99, 20, 'DJI', 6, 'Photo World');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (29, 'AOC CQ32G1 Curved Gaming Monitor', 349.99, 27, 'AOC International', 4, 'Game Zone');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (11, 'LG OLED C1 4K TV', 2499.99, 11, 'LG Electronics', 1, 'Electro Mart');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (99, 'Jabra Elite 75t True Wireless Earbuds', 149.99, 37, 'Jabra', 3, 'Sound Zone');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (81, 'Acer Predator X34 Curved Gaming Monitor', 999.99, 27, 'Acer Inc.', 4, 'Game Zone');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (95, 'Lenovo ThinkPad X1 Carbon Gen 9 Laptop', 1899.99, 32, 'Lenovo Group', 2, 'Tech Haven');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (97, 'Google Nest Audio Smart Speaker', 99.99, 22, 'Google LLC', 3, 'Sound Zone');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (22, 'Corsair K95 RGB Platinum XT Mechanical Gaming Keyboard', 199.99, 21, 'Corsair', 4, 'Game Zone');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (72, 'Fujifilm X100V Compact Camera', 1399.99, 36, 'Fujifilm Holdings Corporation', 6, 'Photo World');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (91, 'Logitech G502 HERO Gaming Mouse', 79.99, 12, 'Logitech', 4, 'Game Zone');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (8, 'Alienware Aurora Gaming PC', 1799.99, 8, 'Alienware (Dell)', 5, 'InnoTech');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (76, 'ASUS TUF Gaming VG279QM Monitor', 349.99, 23, 'ASUS', 4, 'Game Zone');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (65, 'JBL Charge 4 Portable Bluetooth Speaker', 149.99, 24, 'JBL', 3, 'Sound Zone');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (79, 'Canon EOS 90D DSLR Camera', 1199.99, 19, 'Canon Inc.', 6, 'Photo World');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (73, 'Apple iPad Pro (12.9-inch)', 1099.99, 1, 'Apple Inc.', 2, 'Tech Haven');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (41, 'HyperX Cloud II Gaming Headset', 99.99, 34, 'HyperX (Kingston Technology)', 4, 'Game Zone');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (89, 'Canon EOS-1D X Mark III DSLR Camera', 6499.99, 19, 'Canon Inc.', 6, 'Photo World');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (5, 'iPad Air', 599.99, 5, 'Apple Inc.', 2, 'Tech Haven');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (10, 'Fitbit Charge 5', 179.99, 10, 'Fitbit Inc.', 7, 'Health Zone');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (78, 'Lenovo Yoga C930 2-in-1 Laptop', 1199.99, 32, 'Lenovo Group', 2, 'Tech Haven');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (85, 'HP Pavilion 27xw Monitor', 249.99, 30, 'HP Inc.', 2, 'Tech Haven');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (20, 'Apple Watch Series 7', 399.99, 1, 'Apple Inc.', 7, 'Health Zone');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (92, 'Amazon Echo Show 10 (3rd Gen)', 249.99, 45, 'Amazon.com, Inc.', 1, 'Electro Mart');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (57, 'Sony Alpha 7C Mirrorless Camera', 1799.99, 16, 'Sony Corporation', 6, 'Photo World');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (53, 'OnePlus Buds Pro', 149.99, 29, 'OnePlus Technology', 3, 'Sound Zone');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (94, 'Bose SoundLink Revolve+ Bluetooth Speaker', 299.99, 14, 'Bose Corporation', 3, 'Sound Zone');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (59, 'NVIDIA GeForce RTX 3080 Graphics Card', 699.99, 40, 'NVIDIA Corporation', 5, 'InnoTech');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (80, 'Anker Soundcore Flare+ Portable Speaker', 99.99, 31, 'Anker Innovations', 3, 'Sound Zone');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (100, 'Microsoft Surface Pro 7', 799.99, 15, 'Microsoft Corporation', 2, 'Tech Haven');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (51, 'MacBook Pro M2', 1999.99, 1, 'Apple Inc.', 2, 'Tech Haven');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (31, 'MacBook Air M2', 1199.99, 1, 'Apple Inc.', 2, 'Tech Haven');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (46, 'MSI GS66 Stealth Gaming Laptop', 1999.99, 35, 'MSI (Micro-Star International)', 5, 'InnoTech');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (39, 'Apple AirPods Max', 549.99, 1, 'Apple Inc.', 3, 'Sound Zone');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (44, 'Corsair Virtuoso RGB Wireless Gaming Headset', 179.99, 21, 'Corsair', 4, 'Game Zone');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (47, 'Fujifilm X-T4 Mirrorless Camera', 1499.99, 36, 'Fujifilm Holdings Corporation', 6, 'Photo World');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (28, 'Fitbit Versa 3 Smartwatch', 229.99, 10, 'Fitbit Inc.', 7, 'Health Zone');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (75, 'Ring Video Doorbell Pro 2', 249.99, 42, 'Ring (Amazon)', 1, 'Electro Mart');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (19, 'Nikon D850 DSLR Camera', 2999.99, 19, 'Nikon Corporation', 6, 'Photo World');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (36, 'Anker Soundcore Liberty Air 2 Pro Earbuds', 129.99, 31, 'Anker Innovations', 3, 'Sound Zone');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (32, 'SteelSeries Arctis Pro Wireless Gaming Headset', 329.99, 28, 'SteelSeries', 4, 'Game Zone');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (37, 'Lenovo Legion 5 Gaming Laptop', 999.99, 32, 'Lenovo Group', 5, 'InnoTech');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (70, 'Sennheiser HD 660 S Open-Back Headphones', 499.99, 41, 'Sennheiser', 3, 'Sound Zone');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (16, 'Sony A7 III Mirrorless Camera', 1999.99, 16, 'Sony Corporation', 6, 'Photo World');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (23, 'Google Pixel 6', 699.99, 22, 'Google LLC', 1, 'Electro Mart');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (82, 'Apple Watch SE', 279.99, 1, 'Apple Inc.', 7, 'Health Zone');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (90, 'Apple AirPods (3rd generation)', 179.99, 1, 'Apple Inc.', 3, 'Sound Zone');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (52, 'ROCCAT Vulcan Pro Mechanical Gaming Keyboard', 199.99, 38, 'ROCCAT (Turtle Beach)', 4, 'Game Zone');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (40, 'Roku Ultra 4K Streaming Player', 99.99, 33, 'Roku, Inc.', 1, 'Electro Mart');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (7, 'AirPods Pro', 249.99, 7, 'Apple Inc.', 3, 'Sound Zone');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (87, 'Beats Powerbeats Pro Wireless Earphones', 249.99, 44, 'Beats by Dre (Apple Inc.)', 3, 'Sound Zone');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (24, 'ASUS ROG Swift PG279Q Gaming Monitor', 699.99, 23, 'ASUS', 4, 'Game Zone');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (66, 'Acer Aspire 5 Laptop', 549.99, 25, 'Acer Inc.', 2, 'Tech Haven');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (49, 'Acer Predator XB271HU Gaming Monitor', 599.99, 27, 'Acer Inc.', 4, 'Game Zone');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (101, 'Red Tomatoes', 1899.99, 51, 'Pakistan', 51, 'Pakistan');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (88, 'Dell Inspiron 14 Laptop', 799.99, 2, 'Dell Technologies', 2, 'Tech Haven');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (54, 'Dell Alienware AW3420DW Curved Gaming Monitor', 1199.99, 8, 'Alienware (Dell)', 4, 'Game Zone');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (58, 'Apple HomePod Mini', 99.99, 1, 'Apple Inc.', 3, 'Sound Zone');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (27, 'GoPro HERO10 Black Action Camera', 499.99, 26, 'GoPro Inc.', 6, 'Photo World');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (56, 'HP Omen 15 Gaming Laptop', 1299.99, 30, 'HP Inc.', 5, 'InnoTech');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (35, 'LG C1 OLED 4K TV', 2799.99, 11, 'LG Electronics', 1, 'Electro Mart');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (61, 'Samsung Galaxy Watch 4 Classic', 349.99, 13, 'Samsung Electronics', 7, 'Health Zone');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (83, 'HyperX Alloy FPS Pro Mechanical Gaming Keyboard', 69.99, 34, 'HyperX (Kingston Technology)', 4, 'Game Zone');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (71, 'Dell G5 Gaming Desktop', 1299.99, 2, 'Dell Technologies', 5, 'InnoTech');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (96, 'Nikon Z6 Mirrorless Camera', 1999.99, 19, 'Nikon Corporation', 6, 'Photo World');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (26, 'Acer Predator Helios 300 Gaming Laptop', 1199.99, 25, 'Acer Inc.', 5, 'InnoTech');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (45, 'Google Nest Hub (2nd Gen)', 99.99, 22, 'Google LLC', 1, 'Electro Mart');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (4, 'Sony WH-1000XM4 Headphones', 349.99, 4, 'Sony Corporation', 3, 'Sound Zone');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (77, 'UE Megaboom 3 Portable Bluetooth Speaker', 199.99, 43, 'Ultimate Ears (Logitech)', 3, 'Sound Zone');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (64, 'MSI Optix MAG271CQR Curved Gaming Monitor', 399.99, 35, 'MSI (Micro-Star International)', 4, 'Game Zone');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (43, 'DJI Osmo Pocket 2', 349.99, 20, 'DJI', 6, 'Photo World');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (98, 'MSI Optix MAG321CQR Curved Gaming Monitor', 499.99, 35, 'MSI (Micro-Star International)', 4, 'Game Zone');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (15, 'Microsoft Surface Laptop 4', 1299.99, 15, 'Microsoft Corporation', 2, 'Tech Haven');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (84, 'OnePlus Nord 2', 499.99, 29, 'OnePlus Technology', 1, 'Electro Mart');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (25, 'JBL Flip 5 Portable Bluetooth Speaker', 99.99, 24, 'JBL', 3, 'Sound Zone');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (86, 'LG UltraGear 27GN950-B Gaming Monitor', 1499.99, 11, 'LG Electronics', 4, 'Game Zone');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (48, 'Garmin Forerunner 945 GPS Smartwatch', 599.99, 17, 'Garmin Ltd.', 7, 'Health Zone');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (62, 'Logitech MX Master 3 Wireless Mouse', 99.99, 12, 'Logitech', 2, 'Tech Haven');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (6, 'Xbox Series X', 499.99, 6, 'Microsoft Corporation', 4, 'Game Zone');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (17, 'Garmin Venu 2 Smartwatch', 399.99, 17, 'Garmin Ltd.', 7, 'Health Zone');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (14, 'Bose QuietComfort 35 II Wireless Headphones', 299.99, 14, 'Bose Corporation', 3, 'Sound Zone');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (50, 'Jabra Elite 85t True Wireless Earbuds', 229.99, 37, 'Jabra', 3, 'Sound Zone');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (63, 'Google Pixel Buds A-Series', 99.99, 22, 'Google LLC', 3, 'Sound Zone');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (60, 'Canon EOS M50 Mark II Mirrorless Camera', 649.99, 9, 'Canon Inc.', 6, 'Photo World');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (13, 'Samsung Galaxy Tab S7', 649.99, 13, 'Samsung Electronics', 2, 'Tech Haven');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (30, 'Samsung Galaxy Buds Pro', 199.99, 13, 'Samsung Electronics', 3, 'Sound Zone');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (3, 'Samsung QLED 4K Smart TV', 1499.99, 3, 'Samsung Electronics', 1, 'Electro Mart');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (12, 'Logitech G Pro X Mechanical Gaming Keyboard', 149.99, 12, 'Logitech', 4, 'Game Zone');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (68, 'Garmin Instinct Solar Smartwatch', 399.99, 17, 'Garmin Ltd.', 7, 'Health Zone');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (1, 'iPhone 13 Pro', 1099.99, 1, 'Apple Inc.', 1, 'Electro Mart');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (69, 'Samsung Odyssey G7 Gaming Monitor', 699.99, 3, 'Samsung Electronics', 4, 'Game Zone');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (42, 'Sony Xperia 1 III', 1299.99, 16, 'Sony Corporation', 1, 'Electro Mart');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (74, 'Razer Naga X Gaming Mouse', 79.99, 18, 'Razer Inc.', 4, 'Game Zone');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (67, 'GoPro HERO9 Black Action Camera', 449.99, 26, 'GoPro Inc.', 6, 'Photo World');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (34, 'HP Spectre x360 Laptop', 1399.99, 30, 'HP Inc.', 2, 'Tech Haven');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (9, 'Canon EOS R5 Mirrorless Camera', 3499.99, 9, 'Canon Inc.', 6, 'Photo World');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (93, 'Alienware AW2521HFL Gaming Monitor', 499.99, 8, 'Alienware (Dell)', 4, 'Game Zone');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (33, 'OnePlus 9 Pro', 899.99, 29, 'OnePlus Technology', 1, 'Electro Mart');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (38, 'Canon EOS RP Mirrorless Camera', 1299.99, 9, 'Canon Inc.', 6, 'Photo World');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (18, 'Razer Blade 15 Gaming Laptop', 1799.99, 18, 'Razer Inc.', 5, 'InnoTech');
insert into products (productID, productName, productPrice, supplierID, supplierName, storeID, storeName) values (55, 'Sonos Roam Portable Bluetooth Speaker', 169.99, 39, 'Sonos Inc.', 3, 'Sound Zone');