

-- 创建数据表
use StudentManageDB--指定数据库
go
if exists(select*from sysobjects where name = 'Students')
drop table Students
go
create table Students(
	StudentId int identity(10000,1), -- 学号  从10000开始，每次递增1 标识列
	StudentName varchar(20) not null, --姓名
	Gender char(2) not null,		-- 性别
	Birthday datetime  not null,   --出生日期
	StudentIdNo numeric(18,0) not null, --身份证号
	Age int not null,
	Telephone varchar(50),
	StudentAddress varchar(500),
	ClassId int    -- 保留一个外键关系  表示班级外键
)
go

if exists(select * from sysobjects where name = 'ScoreList')  --分数表
drop table ScoreList
go
create table ScoreList (
	Id int  identity(1,1) primary key, --这是主键
	StudentId int not null, --这是外键、
	Csharp int null,  -- 这个值默认是 null
	SQLServer int null,
	UpdateTime datetime not null --更新时间
)
go

if exists(select * from sysobjects where name ='Admins') -- 管理员表
drop table Admins
go
create table LoginId(
	LoginId int identity(1000,1) primary key,
	LoginPwd varchar(20) not null, --登录密码
	AdminName varchar(20) not null
)
go
-- 班级表
if exists(select * from sysobjects where name = 'StudentClass')
drop table StudentClass
go
create table StudentClass
(
	ClassId int primary key,--班级编号
	ClassName varchar(20) not null
)
go