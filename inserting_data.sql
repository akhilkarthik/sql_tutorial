
-- inserting datas into table 

insert into Courses(CourseID,CourseName,Credits,Department)
values(1,	'Math 101',	4,	'Mathematics'),
(2,	'Science 101'	,3,	'Science'),
(3,	'History 101'	,3,	'History'),
(4,	'Computer Science',	4,	'Computer Science'),
(5,	'English 101'	,3,	'English'),
(6,	'Physics 101'	,4,	'Science'),
(7,	'Chemistry 101',	3,	'Science'),
(8,	'Literature 101',	3,	'English'),
(9,	'Algebra 101'	,4,	'Mathematics'),
(10,	'Programming 101',	4,	'Computer Science'),
(11,	'World History 101',	3,	'History'),
(12,	'Biology 101'	,3,	'Science')



insert into Students(StudentID,FirstName,LastName,DateOfBirth,Email,Gender)
values(1,'John','Doe','1995-05-15','john.doe@example.com','Male'),
(2,'Jane','Smith','1998-09-23','jane.smith@example.com','Female'),
(3,'Robert','Johnson','1997-03-07','robert.j@example.com','Male'),
(4,'Emily','Davis','1996-12-10','emily.d@example.com','Female'),
(5,'Michael','Wilson','1999-07-30','michael.w@example.com','Male'),
(6,'Sarah','Brown','1998-02-14','sarah.b@example.com','Female'),
(7,'David','Lee','2000-04-18','david.l@example.com','Male'),
(8,'Olivia','Anderson','1997-10-02','olivia.a@example.com','Female'),
(9,'Alex','Clark','1994-08-21','alex.c@example.com','Male'),
(10,'Jessica','Turner','1995-11-27','jessica.t@example.com','Female'),
(11,'Eric','Moore','1996-06-08','eric.m@example.com','Male'),
(12,'Laura','Hall','1999-01-15','laura.h@example.com','Female'),
(13,'Samuel','White','1997-04-03','samuel.w@example.com','Male'),
(14,'Maria','Lopez','1998-08-12','maria.l@example.com','Female')





insert into Enrollments(EnrollmentID,StudentID,CourseID,EnrollmentDate,Grade)
values(1,'1','1','2023-01-15','A'),
(2,'2','2','2023-01-16','B+'),
(3,'3','1','2023-01-15','A-'),
(4,'4','3','2023-01-17','B'),
(5,'5','2','2023-01-16','A'),
(6,'6','4','2023-01-18','C'),
(7,'7','3','2023-01-17','B+'),
(8,'8','4','2023-01-18','A-'),
(9,'9','5','2023-01-19','A'),
(10,'10','1','2023-01-20','B'),
(11,'11','2','2023-01-21','A'),
(12,'12','3','2023-01-22','B+')


select * from Courses
select * from Students
select * from Enrollments