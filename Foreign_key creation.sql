--adding foreign keys

alter table enrollments 
add constraint fk_env_student
foreign key (StudentID) references Students(StudentID)


alter table enrollments
add constraint fk_enr_cours
foreign key (CourseID) references Courses(CourseID)
