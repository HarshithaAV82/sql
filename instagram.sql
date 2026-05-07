create database instagram;
use instagram;

create table users(
user_id int not null unique,
user_name varchar(25) unique not null,
full_name char(25) not null,
email varchar(50) unique not null,
password binary(20) not null,
bio text,
age int,
followers bigint,
is_verified boolean,
joined_year year);

drop table users;

insert into users values
(1, 'hema','hema R', 'hema@gmail.com', 'hema123'
, 'Food Blooger', 31, 30000, false,2025);
insert into users values
(2, 'heena', 'heena kousar','heena@gmail.com', 'henna123'
, 'Food Blooger', 21, 40000, true,2003);
insert into users values
(3, 'harsha','harsha m', 'harsha@gmail.com', 'hars123'
, 'Food Blooger', 22, 2000, false,2015);
insert into users values
(4, 'hamsika', 'hamsika a','hamsika@gmail.com', 'hamsika123'
, 'Food Blooger', 61, 3000, true,2025);

insert into users values
(101, 'ariya01','Ariya R', 'ariya01@gmail.com',
'ariya123', 'Food Blogger',31, 30000, false, 2025),
(102, 'arbiya01','Arbiya R', 'arbiya01@gmail.com',
'arbiya123', 'Food Blogger',31, 30000, false, 2025),
(103, 'aya01','Aya R', 'aya01@gmail.com',
'aya123', 'Food Blogger',31, 30000, false, 2025),
(104, 'riya01','Riya R', 'riya01@gmail.com',
'riya123', 'Food Blogger',31, 30000, false, 2025);


insert into users(user_id, user_name, full_name, email, password)
values
(105, 'ariya','Ariya R', 'ariya@gmail.com',
'ariya123');
insert into users(user_id, user_name, full_name, email, 
password)
values
(106, 'arbiya','Arbiya R', 'arbiya@gmail.com',
'arbiya123');
insert into users(user_id, user_name, full_name, email, 
password)
values
(108, 'ayaaa','Ayaa R', 'ayaaa@gmail.com',
'ayaa123');
insert into users(user_id, user_name, full_name, email, 
password)
values
(109, 'riyaaa','Riyaa R', 'riyaa@gmail.com',
'riyaa123');              

insert into  users
(user_id, user_name, full_name, email, password)
values
(110, 'megha','Megha R',
'megha@gmail.com','megha123'),
(111, 'sneha','Sneha M',
'sneha@gmail.com','sneha123'),
(112, 'kiran','Kiran H',
'kiran@gmail.com','kiran123'),
(113, 'ravi','Ravi K',
'ravi@gmail.com','ravi123');

update users
set bio = 'Fashion Blogger'
where user_id = 1;

update  users
set followers = 55000
where user_id = 2;

update users
set is_verified = false
where user_id = 3;

update users
set full_name = 'Manu Kumar'
where user_id = 4;

update users
set bio = 'Travel Blogger'
where user_id = 101;

delete from users
where user_id = 101;

delete from users
where user_id = 102;

delete from users
where user_id = 103;

delete from users
where user_id = 104;

delete from users
where user_id = 110;

select * from users;

