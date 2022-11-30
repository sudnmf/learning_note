

-- �������ݱ�
use StudentManageDB--ָ�����ݿ�
go
if exists(select*from sysobjects where name = 'Students')
drop table Students
go
create table Students(
	StudentId int identity(10000,1), -- ѧ��  ��10000��ʼ��ÿ�ε���1 ��ʶ��
	StudentName varchar(20) not null, --����
	Gender char(2) not null,		-- �Ա�
	Birthday datetime  not null,   --��������
	StudentIdNo numeric(18,0) not null, --���֤��
	Age int not null,
	Telephone varchar(50),
	StudentAddress varchar(500),
	ClassId int    -- ����һ�������ϵ  ��ʾ�༶���
)
go

if exists(select * from sysobjects where name = 'ScoreList')  --������
drop table ScoreList
go
create table ScoreList (
	Id int  identity(1,1) primary key, --��������
	StudentId int not null, --���������
	Csharp int null,  -- ���ֵĬ���� null
	SQLServer int null,
	UpdateTime datetime not null --����ʱ��
)
go

if exists(select * from sysobjects where name ='Admins') -- ����Ա��
drop table Admins
go
create table LoginId(
	LoginId int identity(1000,1) primary key,
	LoginPwd varchar(20) not null, --��¼����
	AdminName varchar(20) not null
)
go
-- �༶��
if exists(select * from sysobjects where name = 'StudentClass')
drop table StudentClass
go
create table StudentClass
(
	ClassId int primary key,--�༶���
	ClassName varchar(20) not null
)
go