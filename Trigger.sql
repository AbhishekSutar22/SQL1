use abhishek
go

select * from student
insert into student values(8,'Santosh','Pune',2,'Female',20)

-- create a trigger for student table insert command

create Trigger Tr_student_insert
on student
for insert
as 
begin 
print 'Abhishek'
end

insert into student values(9,'Payal','Nashik',3,'Female',35)
select * from student

go

alter Trigger Tr_student_insert
on student
instead of insert
as 
begin 
print 'Abhishek'
end

insert into student values(10,'Priya','Satara',1,'Female',19)
select * from student

go 

create Trigger Tr_student_update
on student
instead of update
as 
begin 
print 'Abhishek'
end

update student 
set name = 'Samarth'
where RollNumber = 1

select * from student

create Trigger Tr_student_Delete
on student
instead of delete
as 
begin 
print 'Abhishek'
end

delete from student where Rollnumber = 1

select * from student

go

select * from inserted
select * from deleted

alter Trigger Tr_student_insert
on student
for insert
as 
begin 
select * from inserted
select * from deleted
end

insert into student values(10,'Priya','Satara',1,'Female',19)
select * from student

insert into student values(11,'Atul 1','Satara',1,'male',19),(12,'Atul 2','Satara',1,'male',19)
select * from student

alter Trigger Tr_student_Delete
on student
for delete
as 
begin 
select * from inserted
select * from deleted
end
delete from student where RollNumber = 11
select * from student






































































