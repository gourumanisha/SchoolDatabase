
use SchoolDB
go
-- subject Table
Create Table Subjects 
(
 subjectId int primary key Identity (1,1),
 subjectName varchar(50),
 TeacherName varchar(50)
)

INSERT INTO Subjects
VALUES
 ( 'Mathematics','Manisha'),
 ( 'Science','Manasa'),
 ( 'Telugu','Aakanksha'),
 ( 'English','Akshara'),
 ( 'Computer Science','Sony')
--Classes Table

Create Table Classes 
(
 ClassId int primary key Identity (1,1),
 ClassName varchar(50),
 ClassFloor int
)

INSERT INTO Classes 
VALUES
 ('Class 1',0),
('Class 2',0),
 ('Class 3',1),
 ('Class 4',1),
 ('Class 5',2),
 ('Class 6',2),
 ('Class 7',2)

--Student Table
create Table Student
(
 RollNo int primary key Identity (1,1),
 studentName varchar(50),
 classId int foreign key references Classes(ClassId),
 subjectId int foreign key references Subjects(subjectId) 
)

INSERT into Student 
Values 
('Vinod',3,1),
('Lavanya',1,4),
('Varshitha',2,3),
('Lokesh',4,1),
('Thirumal',7,5),
('Namratha',5,3),
('Nikita',6,4),
('Pavan',7,2)

--printing Values
select * from Subjects
select * from Classes
select * from Student