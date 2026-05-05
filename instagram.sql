create database  instagram;
use instagram;

create table user_details(
user_id char(5),
user_name varchar(20),
user_password varchar(10),
gender enum('male', 'female', 'others')
);

insert into user_details(user_id, user_name, user_password, gender)
values
('u101', 'Harshitha','123667', 'female'),
('u102', 'Hema','3456777', 'female'),
('u103', 'Harshi', '88776','female');

select * from user_details;
