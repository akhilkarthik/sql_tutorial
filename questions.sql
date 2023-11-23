select * from students
select * from courses
select * from enrollments


-- Query to get file locations
SELECT 
    name AS LogicalName,
    physical_name AS PhysicalName,
    type_desc AS FileType
FROM sys.master_files
WHERE database_id = DB_ID('master'); -- Replace with your actual database name




---        ============================================  Basic SQL Questions: ============================================

--1) How do you retrieve all records from the Students table?

select * from Students


--2). Write an SQL query to select the first and last names of all students.

select FirstName,LastName
from Students


--3) How would you filter students born after a specific date?

select *
from Students
where DateOfBirth > '1998-02-14'

--4)Retrieve the unique list of departments from the Courses table.

select distinct Department
from courses

--5) Write a query to find the total number of students in the Students table.

select count(*) As 'Total Number of students' from students


--6) Get the list of students who are male.

select *
from students
where gender ='Male'

--7)  Retrieve all courses with more than 3 credits.

select *
from courses
where credits >3


--8) Find the student with the highest student ID.

select Top 1 *
from students
order by studentID desc
------or--------------
select *
from students
where studentid= (select max(studentid) from students)


--9) How do you find the course with the most credits?

select *
from courses
where credits = (select max(credits) from courses)

--10) Write an SQL query to get the email addresses of female students.

select firstname,Email
from students
where gender ='Female';


--============================================ Intermediate SQL Questions:============================================

-- 1) List the students and their enrollment dates for the course named 'Math 101.'

select firstname ,enrollmentdate
from students s
join enrollments e
on s.studentID=e.studentID
join courses c
on e.courseid=c.courseid
where coursename='Math 101'



--2) How do you join the Students and Enrollments tables to get a list of students and their enrolled courses?

select concat(firstname,' ',lastname) As 'Student Name',c.courseName
from students s
join enrollments e
on s.studentID=e.studentID
join courses c
on e.courseID=c.courseid;


--3) Retrieve the students who have not enrolled in any course.

select firstname
from students s
left join enrollments e
on s.studentid=e.studentid
left join courses c
on e.courseid =c.courseid
where e.courseid is null




--4) List the students who have enrolled in more than one course.

select count(s.Studentid)as 'No of student enrolled',c.coursename
from students s
left join enrollments e
on s.studentid=e.studentid
left join courses c
on e.courseid =c.courseid
where c.coursename is not null
group by c.coursename



--5)Get the courses that have no enrollments.

select c.coursename,e.enrollmentid
from students s
left join enrollments e
on s.studentid=e.studentid
left join courses c
on e.courseid =c.courseid
where e.courseid is null