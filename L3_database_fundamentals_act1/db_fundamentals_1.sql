-- CREATING TABLE STUDENTS
create table students(
	ID bigserial primary key,
	first_name varchar(100) not null,
	middle_name varchar(100) not null,
	last_name varchar(100) not null,
	age integer not null,
	location varchar(50) not null
);

-- INSERT 6 RECORDS IN MY TABLE STUDENTS
insert into students(first_name, middle_name, last_name, age, location) 
values ('Juan', 'Blank', 'Cruz', 18, 'Manila'),
('Anne', 'Blank', 'Wall', 20, 'Manila'),
('Theresa', 'Blank', 'Joseph', 21, 'Manila'),
('Isaac', 'Blank', 'Gray', 19, 'Laguna'),
('Zack', 'Blank', 'Matthews', 22, 'Marikina'),
('Finn', 'Blank', 'Lam', 25, 'Manila');

-- UPDATING 1st RECORD IN TABLE STUDENTS
Update students
set first_name = 'Ivan',
	middle_name = 'Ingram',
	last_name = 'Howard',
	age = 25,
	location = 'Bulacan'
	
where id = 1;

-- DELETE LAST RECORD IN TABLE STUDENTS
Delete from students where id = 6;


-- RETRIEVE UPDATED DATA ORDERED BY ID
select * from students order by id







