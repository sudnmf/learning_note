--��������Լ��
if exists(select * from sysobjects where name = 'pk_StudentId') 
			--��sysobjects�в�ѯ��ǰ��û�й���Ϊpk_StudentId������������
alter table Students drop constraint pk_StudentId   --����оͰ��������ɾ��
alter table Students add constraint pk_StudentId primary key(StudentId) --�������

--����ΨһԼ��
if exists(select * from sysobjects where name = 'uq_StudentIdNo')
			--��sysobjects�в�ѯ��ǰ��û�й���Ϊuq_StudentIdNo��ΨһԼ��������
alter table Students drop constraint uq_StudentIdNo   --����оͰ����ΨһԼ��ɾ��
alter table Students add constraint uq_StudentIdNo unique(StudentIdNo)--����µ�ΨһԼ��

--�������Լ��
if exists(select * from sysobjects where name='ck_Age')
alter table Students drop constraint ck_Age
alter table Students add constraint ck_Age check(Age between 18 and 25)

if exists(select * from sysobjects where name = 'ck_Telephone')
alter table Students drop constraint ck_Telephone
alter table Students add constraint ck_Telephone check(len(Telephone)=11)

--����Ĭ��Լ��
if exists(select * from sysobjects where nme = 'df_StudentAddress')
alter table Students drop constraint df_StudentAddress
alter table Students add constraint df_StudentAddress default ('��ַ����') for StudentAddress

if exists(select *from  sysobjects where name = 'fk_classId')
alter table Students drop constraint fk_classId
alter table Students
add constraint fk_classId foreign key(ClassId) references StudentClass(ClassId)
--ע������  Students �����ӱ�StudentClass�������������ṩԼ������ͨ����������

if exists(select*from sysobjects where name = 'fk_studentid')
alter table ScoreList drop constraint fk_studentid 
alter table ScoreList  
add constraint fk_studentid foreign key (StudentId) references Students(StudentId)
-- ScoreList ���ӱ�Students������