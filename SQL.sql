Практическое владение языком SQL
select * from employees;

create table salary (
	id Serial primary key,
	monthly_salary Int not null
);

insert into salary(monthly_salary)
values ('1000'),
		('1100'),
		('1200'),
		('1300'),
		('1400'),
		('1500'),
		('1600'),
		('1700'),
		('1800'),
		('1900'),
		('2000'),
		('2100'),
		('2200'),
		('2300'),
		('2400'),
		('2500');

create table employee_salary (
	id Serial  primary key,
	employee_id Int not null unique,
	salary_id Int not null
);

select * from employee_salary;

insert into employee_salary(employee_id, salary_id)
values  (1,1),
		(2,4),
		(3,5),
		(4,9),
		(5,15),
		(6,3),
		(7,15),
		(8,14),
		(9,6),
		(10,6),
		(11,7),
		(12,5),
		(13,14),
		(14,3),
		(15,12),
		(16,5),
		(17,11),
		(18,10),
		(19,4),
		(20,4),
		(21,1),
		(22,7),
		(23,5),
		(24,15),
		(25,14),
		(26,15),
		(27,13),
		(28,10),
		(29,11),
		(30,11),
		(71,1),
		(72,4),
		(74,5),
		(75,9),
		(76,15),
		(77,3),
		(78,15),
		(79,14),
		(80,6);
	

create table roles (
	id Serial  primary key,
	role_name int not null unique
);

ALTER table roles
ALTER COLUMN role_name type varchar(30);

insert into roles (role_name)
values ('Junior Python developer'),
		('Middle Python developer'),
		('Senior Python developer'),
		('Junior Java developer'),
		('Middle Java developer'),
		('Senior Java developer'),
		('Junior JavaScript developer'),
		('Middle JavaScript developer'),
		('Senior JavaScript developer'),
		('Junior Manual QA engineer'),
		('Middle Manual QA engineer'),
		('Senior Manual QA engineer'),
		('Project Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales manager'),
		('Junior Automation QA engineer'),
		('Middle Automation QA engineer'),
		('Senior Automation QA engineer');

select * from roles;

create table roles_employee (
	id Serial primary key,
	employee_id Int not null unique,
	role_id Int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles(id)
);

select * from roles_employee;

insert into roles_employee (employee_id,role_id)
values  (2,3),
		(3,13),
		(4,14),
		(5,4),
		(6,4),
		(7,18),
		(8,16),
		(9,14),
		(10,8),
		(11,8),
		(12,18),
		(13,3),
		(14,9),
		(15,18),
		(16,12),
		(17,19),
		(18,20),
		(19,10),
		(20,10),
		(21,8),
		(22,19),
		(23,14),
		(24,1),
		(25,7),
		(26,5),
		(27,13),
		(28,17),
		(29,9),
		(30,4),
		(31,3),
		(32,10),
		(33,6),
		(34,14),
		(35,20),
		(36,6),
		(37,19),
		(38,17),
		(39,8),
		(40,19);
-------------------------------------------------------------------
-- Вадим показывал на занятии

create table City (
	id serial,
	title varchar(50)
);

create table Person (
	id serial,
	person_name varchar(50),
	city_id int
);

insert into city (title)
values ('Berlin'),
	('Tokio'),
	('Antalya'),
	('Paris'),
	('Roma');

insert into Person (person_name, city_id)
values  ('Victor',1),
		('Elena',3),
		('Ivan',6),
		('Kevin',5),
		('Nick',8),
		('Darya',4),
		('Peter',2);

