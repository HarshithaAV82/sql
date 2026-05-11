create database hospital_db;

use hospital_db;

create table doctors(
doctor_id int unique,
doctor_name varchar(100) not null,
specialization enum('Heart','Brain','Bone','Child'),
experience float,
salary decimal(10,2),
hospital_name varchar(100)
);

insert into doctors values
(1,'Hema','Heart',12.5,150000.00,'City Hospital');

insert into doctors values
(2,'harshitha','Brain',8.0,120000.00,'Care Hospital');

insert into doctors values
(3,'manasa','Bone',10.0,110000.00,'General Hospital');

insert into doctors values
(4,'Manu','Child',6.5,null,'Life Hospital');


insert into doctors(doctor_id,doctor_name,specialization,experience,salary,hospital_name) values
(5,'mamatha','Heart',14.0,180000.00,'Sun Hospital');

insert into doctors(doctor_id,doctor_name,specialization,experience,salary,hospital_name) values
(6,'venkatesh','Brain',9.5,135000.00,'Metro Hospital');

insert into doctors(doctor_id,doctor_name,specialization,experience,salary,hospital_name) values
(7,'Pooja','Bone',7.0,95000.00,'Rainbow Hospital');

insert into doctors(doctor_id,doctor_name,specialization,experience,salary,hospital_name) values
(8,'Divya','Child',11.0,140000.00,'People Hospital');


insert into doctors values
(9,'Deepa','Heart',15.0,200000.00,'City Hospital'),
(10,'Meghana','Brain',5.5,100000.00,'Care Hospital'),
(11,'hani','Bone',13.0,170000.00,'General Hospital'),
(12,'Anjali','Child',4.5,90000.00,'Sun Hospital');

select * from doctors;

update doctors set salary=210000.00 where doctor_name='Deepak';

delete from doctors where specialization='Child';

drop table doctors;



create table patients(
patient_id int unique,
patient_name varchar(100) not null,
gender enum('Male','Female','Other'),
disease char(30),
bill_amount decimal(9,2),
room_number bigint
);

insert into patients values
(101,'Raju','Male','Fever',12000.00,201);

insert into patients values
(102,'Sneha','Female','Headache',18000.00,202);

insert into patients values
(103,null,'Male','Fracture',25000.00,203);

insert into patients values
(104,'Kavya','Female','Sugar',null,204);


insert into patients(patient_id,patient_name,gender,disease,bill_amount,room_number) values
(105,'Vikas','Male','Heart Pain',55000.00,205);

insert into patients(patient_id,patient_name,gender,disease,bill_amount,room_number) values
(106,'Pooja','Female','Asthma',22000.00,206);

insert into patients(patient_id,patient_name,gender,disease,bill_amount,room_number) values
(107,'Kamala','Male','Allergy',15000.00,207);

insert into patients(patient_id,patient_name,gender,disease,bill_amount,room_number) values
(108,'Divya','Female','Fracture',30000.00,208);


insert into patients values
(109,'Harsha','Male','Fever',10000.00,209),
(110,'Meena','Female','Cancer',80000.00,210),
(111,'Arun','Male','Headache',17000.00,211),
(112,'Anusha','Female','Asthma',24000.00,212);

select * from patients;

update patients set bill_amount=85000.00 where patient_name='Meena';

delete from patients where disease='Fever';

drop table patients;



create table nurses(
nurse_id int unique,
nurse_name varchar(100) not null,
department enum('ICU','Emergency','Ward','Operation'),
shift char(20),
salary decimal(8,2),
experience float
);

insert into nurses values
(201,'Lakshmi','ICU','Morning',45000.00,5.5);

insert into nurses values
(202,'Priya','Emergency','Night',50000.00,6.0);

insert into nurses values
(203,null,'Ward','Evening',40000.00,4.0);

insert into nurses values
(204,'Asha','Operation','Morning',null,7.5);


insert into nurses(nurse_id,nurse_name,department,shift,salary,experience) values
(205,'Nandini','ICU','Night',48000.00,5.0);

insert into nurses(nurse_id,nurse_name,department,shift,salary,experience) values
(206,'Bhavana','Emergency','Morning',52000.00,6.5);

insert into nurses(nurse_id,nurse_name,department,shift,salary,experience) values
(207,'Rani','Ward','Evening',39000.00,3.5);

insert into nurses(nurse_id,nurse_name,department,shift,salary,experience) values
(208,'Shilpa','Operation','Night',55000.00,8.0);


insert into nurses values
(209,'Deepa','ICU','Morning',47000.00,5.8),
(210,'Suma','Emergency','Evening',51000.00,6.2),
(211,'Geetha','Ward','Night',42000.00,4.3),
(212,'Anusha','Operation','Morning',60000.00,9.0);

select * from nurses;

update nurses set salary=65000.00 where nurse_name='Anusha';

delete from nurses where department='Ward';

drop table nurses;




select doctor_name,hospital_name,salary from doctors;

select doctor_name as Doctor_Name,
hospital_name as Hospital,
salary
from doctors;

select doctor_name Doctor_Name,
hospital_name Hospital,
salary
from doctors;

select specialization from doctors;

select distinct specialization from doctors;


select * from doctors where salary > 120000;

select * from doctors
where salary != 95000
and specialization='Heart';

select * from doctors
where salary != 95000
or specialization='Heart';



select patient_name,disease,bill_amount from patients;

select patient_name as Patient_Name,
disease as Disease_Name,
bill_amount
from patients;

select patient_name Patient_Name,
disease Disease_Name,
bill_amount
from patients;

select gender from patients;

select distinct gender from patients;

select * from patients
where bill_amount > 20000;

select * from patients
where bill_amount != 15000
and gender='Female';

select * from patients
where bill_amount != 15000
or gender='Female';

select * from patients
where not gender='Male';


select nurse_name,department,salary from nurses;

select nurse_name as Nurse_Name,
department as Department_Name,
salary
from nurses;

select nurse_name Nurse_Name,
department Department_Name,
salary
from nurses;

select department from nurses;

select distinct department from nurses;

select * from nurses
where salary > 50000;

select * from nurses
where salary != 39000
and department='ICU';

select * from nurses
where salary != 39000
or department='ICU';

select * from nurses
where not department='Ward';

