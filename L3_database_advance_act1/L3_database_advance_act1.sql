-- alter table classrooms
-- add column student_id integer references students(id)

-- alter table classrooms
-- add constraint fk_students foreign key(student_id) references students(id);

-- CREATING TABLE CLASSROOMS
create table classrooms(
id bigserial primary key,
student_id integer not null,
section varchar(10) not null
);

-- INSERTING DATA TO TABLE CLASSROOMS
insert into classrooms(student_id, section)
values
(1, 'A'), (2, 'A'), (3, 'B'), (4, 'C'), (5, 'B'),
(6, 'A'), (7, 'C'), (8, 'B'), (9, 'B'), (10, 'C');

-- LEFT JOIN
select 
s.first_name fname, s.middle_name middle_name, s.last_name lname,
s.age age, s.location location, c.section section
from
classrooms c left join students s on c.student_id = s.id;

-- RIGHT JOIN
select 
s.first_name fname, s.middle_name middle_name, s.last_name lname,
s.age age, s.location location, c.section section
from
classrooms c right join students s on c.student_id = s.id;

-- INNER JOIN
select 
s.first_name fname, s.middle_name middle_name, s.last_name lname,
s.age age, s.location location, c.section section
from
classrooms c inner join students s on c.student_id = s.id;

-- FULL JOIN
select 
s.first_name fname, s.middle_name middle_name, s.last_name lname,
s.age age, s.location location, c.section section
from
classrooms c full join students s on c.student_id = s.id;
