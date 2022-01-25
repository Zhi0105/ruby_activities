--Dispaly count of all students
select count(*) student_count from students;

--Select all students with `location` is `Manila`
select concat(first_name, ' ',  middle_name, ' ', last_name) full_name, location
from students where location = 'Manila';

--Display the average `age` of all `students`
select avg(age) avg_age from students;

--Display all `students` by `age` descending order
select * from students order by age desc




