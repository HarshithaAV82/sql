create database netflix;
use netflix;

show databases;

create table user_details(
user_id int,
user_name varchar(30),
email varchar(40),
phone_number bigint,
subscription_type enum('basic', 'standard', 'premimum')
);

create table movies(
movie_id int,
movie_name varchar(30),
release_year year,
rating float,
language_name varchar(20)
);

create table payment(
payment_id int,
user_id int,
amount decimal(10,2),
payment_mode varchar(20),
payment_date date
);

create table watch_history(
history_id int,
user_name varchar(30),
movie_name varchar(30),
watch_time time,
device_name varchar(20)
);

rename table movies to movie_info;

rename table payment to payment_info;

alter table user_details add address varchar(50);
alter table user_details add age int;
alter table user_details add account_status varchar(20);

alter table user_details drop account_status;

alter table user_details modify user_name varchar(50);
alter table user_details modify email varchar(60);
alter table user_details modify subscription_type varchar(20);

alter table user_details rename column phone_number to 
mobile_number;
alter table user_details rename column subscription_type to plan_type;

desc user_details;

alter table movie_info add director_name varchar(30);
alter table movie_info add movie_duration int;
alter table movie_info add movie_type varchar(20);

alter table movie_info drop movie_type;


alter table movie_info modify movie_name varchar(50);
alter table movie_info modify rating decimal(3,1);
alter table movie_info modify language_name varchar(30);

alter table movie_info rename column release_year to
 released_Year;
 alter table movie_info rename column language_name to 
 movie_language;
 
 desc movie_info;
 
 alter table payment_info add gst_amount decimal(10,2);
 alter table payment_info add payment_status varchar(20);
 alter table payment_info add transaction_id varchar(30);
 
 alter table payment_info drop gst_amount;
 
 alter table payment_info modify amount bigint;
 alter table payment_info modify payment_mode  varchar(30);
 alter table payment_info modify transaction_id varchar(50);
 
 alter table payment_info rename column payment_date to 
 paid_date;
 alter table payment_info rename column amount to 
 total_amount;
 
 desc payment_info;
 
 alter table watch_history add watched_date date;
 alter table watch_history add internet_type varchar(20);
 alter table watch_history add screen_size varchar(20);
 
 alter table watch_history drop screen_size;
 
 alter table watch_history modify user_name varchar(30);
 alter table watch_history modify movie_name varchar(30);
 alter table watch_history modify device_name varchar(25);
 
 alter table watch_history rename column watch_time to 
 streaming_time;
 alter table watch_history rename column  internet_type to
 network_type;
 
 
 desc watch_history;
 
 drop table payment_info;
 
 drop table watch_history;
 
 
 
 


