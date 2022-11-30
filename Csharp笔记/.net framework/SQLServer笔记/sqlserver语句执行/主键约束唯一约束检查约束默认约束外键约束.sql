--创建主键约束
if exists(select * from sysobjects where name = 'pk_StudentId') 
			--在sysobjects中查询先前有没有过名为pk_StudentId的主键被创建
alter table Students drop constraint pk_StudentId   --如果有就把这个主键删除
alter table Students add constraint pk_StudentId primary key(StudentId) --添加主键

--创建唯一约束
if exists(select * from sysobjects where name = 'uq_StudentIdNo')
			--在sysobjects中查询先前有没有过名为uq_StudentIdNo的唯一约束被创建
alter table Students drop constraint uq_StudentIdNo   --如果有就把这个唯一约束删除
alter table Students add constraint uq_StudentIdNo unique(StudentIdNo)--添加新的唯一约束

--创建检查约束
if exists(select * from sysobjects where name='ck_Age')
alter table Students drop constraint ck_Age
alter table Students add constraint ck_Age check(Age between 18 and 25)

if exists(select * from sysobjects where name = 'ck_Telephone')
alter table Students drop constraint ck_Telephone
alter table Students add constraint ck_Telephone check(len(Telephone)=11)

--创建默认约束
if exists(select * from sysobjects where nme = 'df_StudentAddress')
alter table Students drop constraint df_StudentAddress
alter table Students add constraint df_StudentAddress default ('地址不详') for StudentAddress

if exists(select *from  sysobjects where name = 'fk_classId')
alter table Students drop constraint fk_classId
alter table Students
add constraint fk_classId foreign key(ClassId) references StudentClass(ClassId)
--注意这里  Students 表是子表，StudentClass是主表，主表中提供约束的列通常是主键列

if exists(select*from sysobjects where name = 'fk_studentid')
alter table ScoreList drop constraint fk_studentid 
alter table ScoreList  
add constraint fk_studentid foreign key (StudentId) references Students(StudentId)
-- ScoreList 是子表，Students是主表