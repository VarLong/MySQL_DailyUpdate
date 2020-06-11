drop database if exists department;
drop database if exists mydb;

CREATE DATABASE company character set 'utf8' collate 'utf8_bin';

show databases;

use company;

create table employee(
employee_id Int primary key, 
first_name varchar(20), 
last_name varchar(20), 
email varchar(20),
phone_number varchar(20),
salary double(20, 2),
job_id varchar(20),
manager_id int,
department_id int,
start_time date,
statue varchar(10)
);

create table department(
department_id int,
department_name varchar(10),
manager_id int,
location_id int
);


alter table department change department_id department_id int primary key;

create table job(
job_id int primary key,
job_tile varchar(10),
level varchar(10),
min_salary int,
max_salary int
);

alter table job change job_tile job_title varchar(20);

create table location(
location_id int primary key,
location_title varchar(10),
country_number int,
address varchar(20)
);

desc department;

-- 查看创建表的信息 
show create table location;

insert into department (`department_id`, `department_name`, `manager_id`,`location_id`) values (1, "技术部", 1, 1);
insert into department (`department_id`, `department_name`, `manager_id`,`location_id`) values (2, "产品部", 2, 2);
insert into department (`department_id`, `department_name`, `manager_id`,`location_id`) values (3, "测试部", 3, 3);
insert into department (`department_id`, `department_name`, `manager_id`,`location_id`) values (4, "服务部", 4, 4);
insert into department (`department_id`, `department_name`, `manager_id`,`location_id`) values (5, "IT部", 5, 5);
insert into department (`department_id`, `department_name`, `manager_id`,`location_id`) values (6, "调查部", 6, 6);
insert into department (`department_id`, `department_name`, `manager_id`,`location_id`) values (7, "管理部", 7, 6);
insert into department (`department_id`, `department_name`, `manager_id`,`location_id`) values (8, "公关部", 8, 7);
insert into department (`department_id`, `department_name`, `manager_id`,`location_id`) values 
(9, "女公关部", 1, 8), 
(10, "男公关部", 1, 8);

select * from department;

desc employee;

alter table employee change job_id job_id int;

insert into employee 
(employee_id, first_name, last_name, email,phone_number, salary, job_id, manager_id, department_id, start_time, statue)
values
(1, 'Hong', 'CzZu', 'fdsa.zhu@163.com', '458269574', 33000, 1, 1, 2, date('2017-5-20'), 'ONBOARD'),
(2, 'Jone', 'Cu', 'fdsa.zhu@163.com', '12542568574', 8000, 1, 1, 2, date('2019-10-20'), 'ONBOARD'),
(3, 'Honet', 'Beef', 'Beef.zhu@163.com', '254254', 15000, 2, 1, 3, date('2018-10-20'), 'ONBOARD'),
(4, 'Amit', 'Chrry', 'Chrry.zhu@163.com', '654', 9000, 1, 4, 4, date('2017-10-20'), 'OFFLINE'),
(5, 'Run', 'Hab', 'Hab.zhu@163.com', '6543287', 50000, 3, 1, 5, date('2019-12-20'), 'ONBOARD'),
(6, 'Test', 'T', 'hongjie.zhu@163.com', '654254', 9000, 5, 1, 6, date('2018-10-20'), 'ONBOARD'),
(7, 'Afds', 'Ruje', 'Ruje.zhu@163.com', '687257', 2000, 4, 4, 7, date('2019-10-20'), 'OFFLINE'),
(8, 'Beeef', 'Bo', 'Bo.zhu@163.com', '2788687257', 8000, 4, 1, 8, date('2019-01-20'), 'ONBOARD'),
(9, 'Bee', 'Liff', 'Liff.zhu@163.com', '65875285727', 6000, 6, 1, 1, date('2015-10-20'), 'ONBOARD'),
(10, 'General', 'Zhu', 'hongjie.zhu@163.com', '12548968574', 2000, 7, 9, 1, date('2011-11-20'), 'OFFLINE');

desc job;

select distinct * from department;

insert into job (job_id, job_title, level, min_salary, max_salary)
values
(1, '测试开发工程师', 'A1', 10000, 50000),
(2, '开发工程师', 'A2', 1000, 8000),
(3, '产品经理', 'C', 1000, 5000),
(4, '测试工程师', 'A', 1000, 5000),
(5, '服务工程师', 'A', 20000, 30000),
(6, 'IT', 'A', 1000, 5000),
(7, '调查员', 'A', 1000, 60000),
(8, 'CEO', 'A', 1000, 5000),
(9, '公关员', 'A', 10000, 50000),
(10, 'CFO', 'A', 40000, 80000),
(11, 'DMA', 'A', 30000, 50000);

desc location;

insert into location (location_id, location_title, country_number, address) values 
(1, '中国', 1, 'BeiJing'),
(2, 'Armenia', 2, 'LOS'),
(3, 'UK', 3, 'LONDON'),
(4, '日本', 4, 'DaBan');

select * from location;
select * from job;
select *, concat(first_name, ' ', last_name) as myname from employee where concat(first_name, ' ', last_name) like '%a%';
select * from department;

select * from world.country;




