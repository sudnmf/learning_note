use master -- 在 master 数据库中备份我们要创建的数据库的数据
if exists(select * from sysdatabases where name = 'StudentManageDB') -- 如果存在名为 StudentManageDB 的数据库就进行删除
drop database StudentManageDB
go
create database StudentManageDB
on primary
(
	name = "StudentManageDB_data",
	filename = "D:\DB\StudentManageDB_data.mdf",
	size = 10MB,
	filegrowth = 5MB
)
log on
(
	name = "StudentManageDB_log",
	filename = "D:\DB\StudentManageDB_log.ldf" ,
	size = 2MB,
	filegrowth = 1MB
)
go


if exists(select * from sysdatabases where name = 'StudentManageDB') -- 如果存在名为 StudentManageDB 的数据库就进行删除
drop database StudentManageDB
create database studentManageDB
on primary
(
	name = 'StudentManageDB_data',
	filename = "D:\DB\StudentManageDB_data.mdf",
	size = 10MB,
	filegrowth = 5MB
)
,
(
	name = 'StudentManageDB_data1',
	filename =  "D:\DB\StudentManageDB_data.ndf",
	size = 2MB,
	filegrowth = 1MB
)
log on
(
	name =  'StudentManageDB_log',
	filename =  "D:\DB\StudentManageDB_log.ldf",
	size = 2MB,
	filegrowth = 1MB
)
,
(
	name =  'StudentManageDB_log1',
	filename =  "D:\DB\StudentManageDB_log1.ldf",
	size = 2MB,
	filegrowth = 1MB
)