use StudentManageDB
go
insert into Students(StudentName,Gender,Birthday,StudentIdNo,Age,Telephone,StudentAddress,ClassId) values
('��һ','��','2002-03-04',111122223333444455,19,'18800563355','njupt',1),
('����','��','2003-03-04',111122223333444466,20,'18800563388','njupt',1),
('����','��','2001-03-04',111122223333444477,20,'18800563399','njupt',2),
('����','��','2003-03-04',111122223333444455,18,'18800563300','njupt',2)
go
select StudentName,Birthday,StudentIdNo,Age from Students where ClassId = 1
go
update Students set Gender = 'Ů' where StudentName = '��һ'
update Students set Age = 30 where StudentName = '����'
go
delete from Students
go
