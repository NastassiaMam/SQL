-- Первая часть.
-- Таблица employees
-- 1. Создать таблицу employees
-- - id. serial,  primary key,
-- - employee_name. Varchar(50), not null
-- 2. Наполнить таблицу employee 70 строками.

create table employees (
	id Serial primary key,
	employee_name Varchar(50) not null
);
insert into employees(id, employee_name)
values  (1, 'person_1'),
	(2, 'person_2'),
	(3, 'person_3'),
	(4, 'person_4'),
	(5, 'person_5'),
	(6, 'person_6'),
	(7, 'person_7'),
	(8, 'person_8'),
	(9, 'person_9'),
	(10, 'person_10'),
	(11, 'person_11'),
	(12, 'person_12'),
	(13, 'person_13'),
	(14, 'person_14'),
	(15, 'person_15'),
	(16, 'person_16'),
	(17, 'person_17'),
	(18, 'person_18'),
	(19, 'person_19'),
	(20, 'person_20'),
	(21, 'person_21'),
	(22, 'person_22'),
	(23, 'person_23'),
	(24, 'person_24'),
	(25, 'person_25'),
	(26, 'person_26'),
	(27, 'person_27'),
	(28, 'person_28'),
	(29, 'person_29'),
	(30, 'person_30'),
	(31, 'person_31'),
	(32, 'person_32'),
	(33, 'person_33'),
	(34, 'person_34'),
	(35, 'person_35'),
	(36, 'person_36'),
	(37, 'person_37'),
	(38, 'person_38'),
	(39, 'person_39'),
	(40, 'person_40'),
	(41, 'person_41'),
	(42, 'person_42'),
	(43, 'person_43'),
	(44, 'person_44'),
	(45, 'person_45'),
	(46, 'person_46'),
	(47, 'person_47'),
	(48, 'person_48'),
	(49, 'person_49'),
	(50, 'person_50'),
	(51, 'person_51'),
	(52, 'person_52'),
	(53, 'person_53'),
	(54, 'person_54'),
	(55, 'person_55'),
	(56, 'person_56'),
	(57, 'person_57'),
	(58, 'person_58'),
	(59, 'person_59'),
	(60, 'person_60'),
	(61, 'person_61'),
	(62, 'person_62'),
	(63, 'person_63'),
	(64, 'person_64'),
	(65, 'person_65'),
	(66, 'person_66'),
	(67, 'person_67'),
	(68, 'person_68'),
	(69, 'person_69'),
	(70, 'person_70');

select * from employees;

-- 3.Создать таблицу salary
-- - id. Serial  primary key,
-- - monthly_salary. Int, not null
-- 4.Наполнить таблицу salary 15 строками:
create table salary (
	id Serial primary key,
	monthly_salary Int not null
);

insert into salary(monthly_salary)
values  ('1000'),
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

-- 5.Создать таблицу employee_salary
-- - id. Serial  primary key,
-- - employee_id. Int, not null, unique
-- - salary_id. Int, not null
-- 6.Наполнить таблицу employee_salary 40 строками:
-- - в 10 строк из 40 вставить несуществующие employee_id
create table employee_salary (
	id Serial  primary key,
	employee_id int not null unique,
	salary_id int not null
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

--7. Создать таблицу roles
-- - id. Serial  primary key,
-- - role_name. int, not null, unique
-- 8.Поменять тип столба role_name с int на varchar(30)
-- 9.Наполнить таблицу roles 20 строками:
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

-- 10.Создать таблицу roles_employee
-- - id. Serial  primary key,
-- - employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- - role_id. Int, not null (внешний ключ для таблицы roles, поле id)
-- 11.Наполнить таблицу roles_employee 40 строками:

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
