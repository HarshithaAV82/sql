create database chromebrowser;

use chromebrowser;

create table browser_details(
user_id char(5),
user_name varchar(20),
website_name varchar(50),
website_link varchar(100),
visited_time varchar(20)
);

insert into browser_details(user_id, user_name, website_name, website_link, visited_time)
values
('u101','harshitha','youtube','www.youtube.com','10:00 am'),
('u102','hema','google','www.google.com','11:30 am'),
('u103','harshi','instagram','www.instagram.com','1:00 pm');

select * from browser_details;