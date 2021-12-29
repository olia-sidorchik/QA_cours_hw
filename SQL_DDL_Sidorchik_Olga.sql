-- 1. Создать таблицу employees.

create table employees (
	id serial primary key,
	employee_name varchar(50) not null
);

select *from employees;

--  2. Наполнить таблицу employee 70 строками.

insert into employees (employee_name)
values ('Авдеева Владислава'),
('Андреева Виктория'),
('Андрианова Злата'),
('Анисимов Артём'),
('Анисимова Екатерина'),
('Астахов Даниил'),
('Афанасьев Илья'),
('Белова Ева'),
('Белякова Арина'),
('Большаков Савелий'),
('Васильева Елизавета'),
('Воробьев Иван'),
('Гаврилова Анна'),
('Гаврилова Виктория'),
('Гордеев Александр'),
('Грачев Артём'),
('Гусев Павел'),
('Давыдов Платон'),
('Демидов Андрей'),
('Дьяков Платон'),
('Евдокимова Мария'),
('Ефимова Ульяна'),
('Жданова Ульяна'),
('Завьялов Иван'),
('Захаров Тимур'),
('Захарова Мария'),
('Иванова Кира'),
('Иванова Маргарита'),
('Игнатов Вячеслав'),
('Игнатьев Григорий'),
('Калачева Варвара'),
('Карпов Дмитрий'),
('Кожевникова Мария'),
('Кондратьева Ульяна'),
('Копылова Виктория'),
('Костин Артём'),
('Котова Марина'),
('Крылов Марк'),
('Кузнецов Андрей'),
('Кузнецова Анастасия'),
('Куликова Алиса'),
('Лебедев Даниил'),
('Марков Арсений'),
('Митрофанов Георгий'),
('Михайлова Кристина'),
('Орехов Демид'),
('Петрова Милена'),
('Петровская Олеся'),
('Позднякова Мария'),
('Пономарев Артём'),
('Попов Марк'),
('Попов Артём'),
('Прокофьева Елена'),
('Романова Вероника'),
('Румянцев Александр'),
('Рыбаков Тимофей'),
('Сальников Семён'),
('Сахаров Алексей'),
('Синицын Александр'),
('Смирнова Анастасия'),
('Сомов Максим'),
('Сорокина Лилия'),
('Сотникова Дарина'),
('Степанов Артём'),
('Токарев Артём'),
('Федосов Дмитрий'),
('Хохлова Виктория'),
('Хохлова София'),
('Чернова Виктория'),
('Шмелева Полина');

-- 3. Создать таблицу salary
create table salary (
	id serial primary key,
	monthly_salary int not null
);

select * from salary;

-- 4. Наполнить таблицу salary 15 строками
insert into salary (monthly_salary)
values (1000),
(1100),
(1200),
(1300),
(1400),
(1500),
(1600),
(1700),
(1800),
(1900),
(2000),
(2100),
(2200),
(2300),
(2400),
(2500);

--5. Создать таблицу employee_salary
create table employee_salary(
	id  serial primary key,
	employee_id int not null unique,
	salary_id int not null
);

select * from employee_salary;

-- 6. Наполнить таблицу employee_salary 40 строками (в 10 строк из 40 вставить несуществующие employee_id)

insert into employee_salary (employee_id, salary_id)
values (30, 12),
(28, 3),
(26, 4),
(24, 8),
(22, 15),
(20, 4),
(18, 16),
(16, 7),
(14, 5),
(12, 1),
(10, 2),
(8, 4),
(6, 10),
(4, 4),
(2, 1),
(70, 11),
(68, 13),
(66, 9),
(64, 14),
(62, 11),
(60, 1),
(58, 2),
(56, 5),
(54, 4),
(52, 9),
(50, 7),
(48, 16),
(46, 13),
(44, 4),
(42, 7),
(78, 15),
(77, 13),
(79, 5),
(86, 1),
(88, 2),
(90, 5),
(95, 15),
(97, 4),
(100, 6),
(101, 10);

-- 7. Создать таблицу roles

create table roles (
	id serial primary key,
	role_name int not null unique
);

select * from roles;

-- 8. Поменять тип столба role_name с int на varchar(30)
 alter table roles 
 alter column role_name type varchar(30) using role_name::varchar(30);

--9. Наполнить таблицу roles 20 строками

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

--10. Создать таблицу roles_employee

create table roles_employee (
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employees (id),
	foreign key (role_id)
		references roles (id)	
);

select * from roles_employee;

--11. Наполнить таблицу roles_employee 40 строками

insert into roles_employee (employee_id, role_id)
values (2, 20),
(4, 19),
(6, 18),
(8, 1),
(10, 10),
(12, 15),
(14, 17),
(16, 1),
(17, 4),
(19, 3),
(20, 2),
(22, 5), 
(24, 6),
(26, 8),
(28, 7),
(30, 5), 
(33, 3), 
(35, 8),
(36, 10),
(38, 11),
(40, 12), 
(42, 7), 
(43, 2),
(44, 2),
(45, 3),
(50, 5),
(53, 10),
(60, 11),
(61, 8),
(62, 2),
(70, 1),
(3, 3),
(5, 5),
(7, 7),
(9, 5),
(31, 11),
(1, 20),
(64, 17),
(68, 8),
(69,9)

