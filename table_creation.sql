--create database schooldb
--use schooldb

--courses table 

create table Courses(
courseID int primary key,
courseName varchar(50),
Credits int,
Department varchar(50))


-- students table 

create table Students(
StudentId int primary key,
Firstname varchar(50),
lastname varchar(50),
DateOfBirth date,
email varchar(55),
Gender varchar(20))

-- Enrollments table 


create table Enrollments (
EnrollmentID int primary key,
StudentID int,
CourseID int,
EnrollmentDate date,
Grade varchar(20))




