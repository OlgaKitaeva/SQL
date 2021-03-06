create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);

insert into employees(employee_name)
values     ('Timothy Ball'),
	   ('Robert Harris'),
           ('Scott Thompson'),
	   ('Richard Beck'),
	   ('John Moore'),
	   ('Raymond Graves'),
	   ('Stanley Ross'),
	   ('Gerald Jones'),
	   ('Joseph Ballard'),
	   ('William Peterson'),
	   ('Jeffrey Hamilton'),
	   ('Harold Torres'),
	   ('John Olson'),
	   ('Martin James'),
	   ('Kenneth Smith'),
	   ('Gary Gonzalez'),
	   ('Frank Gray'),
	   ('Charles Wilson'),
	   ('James Richardson'),
	   ('David Williams'),
	   ('Alex Arnold'),
	   ('Adam Ross'),
	   ('Richard Adkins'),
	   ('Peter Dunn'),
	   ('Luis Hill'),
	   ('Vincent Fisher'),
	   ('Daniel Alexander'),
	   ('Max Hoffman'),
	   ('Rodney Hughes'),
	   ('Jesse Hall'),
	   ('Marion Bennett'),
	   ('Pedro Black'),
	   ('Darrell Foster'),
	   ('Leslie Harris'),
	   ('William Sharp'),
	   ('Matthew Guzman'),
	   ('Jeffrey Simon'),
	   ('Virgil Wallace'),
	   ('Mark Gibbs'),
	   ('Scott Griffith'),
	   ('Adam White'),
	   ('Joseph Harrison'),
	   ('Eric Graham'),
	   ('Richard Ward'),
	   ('Roger Lloyd'),
	   ('Jerome Garcia'),
	   ('Paul Watkins'),
	   ('Michael Williams'),
	   ('Jeffrey Robinson'),
	   ('Allen Davidson'),
	   ('Jack Evans'),
	   ('Leonard Gutierrez'),
	   ('Carlos Turner'),
	   ('Lance Palmer'),
	   ('James Cole'),
	   ('Douglas Henry'),
	   ('Charles Morris'),
	   ('Marcus Hansen'),
	   ('Stephen Johnson'),
	   ('Robert Bryant'),
	   ('Donald Walker'),
	   ('Marvin Evans'),
	   ('Michael Schultz'),
	   ('Adam Robertson'),
	   ('Roy Russell'),
	   ('James Mitchell'),
	   ('Dennis Gutierrez'),
	   ('Jesse Simon'),
	   ('Michael Rogers'),
	   ('David Palmer');
	   
create table salary(
	id serial primary key,
	monthly_salary int not null
);

insert into salary(monthly_salary)
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
       
create table employee_salary(
	id serial primary key,
	employee_id int unique not null,
	salary_id int not null
);

insert into employee_salary(employee_id, salary_id)
values (3, 7),
       (1, 4),
       (5, 9),
       (40, 13),
       (23, 4),
       (11, 2),
       (52, 10),
       (15, 13),
       (26, 4),
       (16, 1),
       (33, 7),
       (2, 6),
       (4, 9),
       (6, 2),
       (7, 10),
       (8, 9),
       (9, 13),
       (10, 1),
       (12, 8),
       (13, 4),
       (14, 3),
       (17, 8),
       (18, 15),
       (19, 12),
       (20, 2),
       (21, 9),
       (22, 5),
       (24, 10),
       (25, 1),
       (27, 7),
       (105, 10),
       (98, 6),
       (134, 8),
       (111, 1),
       (190, 3),
       (109, 11),
       (89, 5),
       (99, 13),
       (213, 15),
       (100, 9);
      
create table roles(
	id serial primary key,
	role_name int unique not null
);

alter table roles
alter column role_name type varchar(30) using role_name::varchar(30);

insert into roles(role_name)
values     ('Junior Python developer'),
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

create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles(id)
);

insert into roles_employee(employee_id, role_id)
values (7, 2),
       (20, 4),
       (3, 9),
       (5, 13),
       (23, 4),
       (11, 2),
       (10, 9),
       (22, 13),
       (21, 3),
       (34, 4),
       (6, 7),
       (1, 19),
       (2, 5),
       (4, 15),
       (8, 20),
       (9, 3),
       (12, 18),
       (13, 1),
       (14, 12),
       (15, 6),
       (16, 13),
       (17, 10),
       (18, 8),
       (19, 17),
       (24, 11),
       (25, 8),
       (26, 9),
       (27, 4),
       (28, 14),
       (29, 13),
       (30, 15),
       (31, 20),
       (32, 12),
       (33, 3),
       (35, 9),
       (36, 10),
       (44, 5),
       (66, 2),
       (55, 1),
       (69, 16);
