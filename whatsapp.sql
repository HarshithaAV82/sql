create database whatsapp;

use whatsapp;

create table user_details(
user_id char(5),
user_name varchar(15),
phone_number varchar(10),
about varchar(20)
);

insert into user_details(user_id, user_name, phone_number, about)
values
('u101', 'harshitha','9999999999','hello'),
('u102', 'hema','8888888888','hi'),
('u103', 'harshi','7777777777','busy');

select * from user_details;