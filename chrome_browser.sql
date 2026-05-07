create database chromebrowser;

use chromebrowser;

create table browser_details(
user_id char(5),
user_name varchar(20) not null,
website_name varchar(50),
website_link varchar(100),
visited_time varchar(20),
email varchar(25)  unique,
mobile_number bigint unique
);

alter table browser_details add password varchar(20);
insert into browser_details(user_id, user_name, website_name, website_link, visited_time,email, mobile_number)
values
('u101','harshitha','youtube','www.youtube.com','10:00 a', 'avharshitha@123', 3333333333),
('u102','hema','google','www.google.com','11:30 am' ,'avharshitha@456', 4444444444),
('u103','harshi','instagram','www.instagram.com','1:00 pm','avharshitha@99', 5555555555);

select * from browser_details;

drop database chromebrowser;

create database chromebrowser;
use chromebrowser;

create table browser_details(
user_id char(5),
user_name varchar(20),
website_name varchar(50),
website_link varchar(100),
visited_time varchar(20)
);

insert into browser_details values('123', 'harshi', 'www.google.com', 'www.wwee.rlink', '2:30');

insert into browser_details values
('u101','harshitha','youtube','www.youtube.com','10:00 am'),
('u102','hema','google','www.google.com','11:30 am'),
('u103','harshi','instagram','www.instagram.com','1:00 pm'),
('104', 'hemi', 'www.link.in', 'www.likn.com', '2:00 pm');
 
 
 insert into browser_details(user_id, user_name, website_name, website_link, visited_time)
values('u105', 'acchu', 'X', 'www.x.in', '3:00 pm');

insert into browser_details(user_id, user_name, website_name, website_link, visited_time)
values('u106', 'arjun', 'y', 'www.vi.in', null),
('107', 'harsh', 'z', 'www.zi.in', '5:00 pm'),
('108', 'manu', 'naukri', 'naukri.com', '6:00 pm');

desc browser_details;

update browser_details
 set password = 'nic@123'
 where user_id = 'u101';
 
 update browser_details
 set password = 'nic@456'
 where user_id = 'u102';
 
 update browser_details
 set password = 'nic@789'
 where user_id = 'u103';
 
 update browser_details
set password = 'nic@5585'; 

select * from  browser_details;

delete from browser_details where user_id = '123';

drop table browser_details;


