insert into StudentClass (ClassId,ClassName) 
values
(1001,'B210315'),
(1002,'B210316'),
(1003,'B210317'),
(1004,'B210318')

insert into Students (StudentName,Gender,Birthday,StudentIdNo,Age,Telephone,StudentAddress,ClassId)
values
('rzy','��','2003-04-06','320206200304062818',19,'18800563498','��������',1001),
('mzg','��','2003-03-22','320453455465654533',20,'18934843943','������ͨ',1002),
('azg','��','2003-09-22','320654354353543818',21,'18190940022','��������',1003),
('mnm','��','2003-08-23','313245899034023203',18,'13459544383','������',1004),
('abc','Ů','2004-02-11','456435220304548183',20,'18805463498','��������',1001),
('opq','��','2003-05-31','320206200356434318',25,'18863423298','�����γ�',1002),
('rxa','��','2003-04-22','320206200765434318',24,'18432343558','�㽭����',1003),
('rjw','��','2003-03-11','320256435643564458',23,'18133422332','����',1004),
('jmc','��','2003-02-28','325643245643546538',23,'13454355448','����',1001),
('qob','Ů','2003-01-31','320564324565324568',19,'18344343458','����',1002),
('eaw','��','2003-11-29','320243567543234548',18,'18456543348','����',1003),
('nee','��','2003-12-30','320265435645634238',18,'18432134343','����',1004),
('hjc','��','2003-10-24','325643245676435668',20,'14535643456','�ӱ�',1001),
('rkq','Ů','2003-09-21','320765432435465438',21,'16543243543','����',1002),
('iei','Ů','2003-08-21','326754356434564348',22,'15643213453','�Ϻ�',1003),
('qei','��','2003-07-18','325643500304062878',24,'15643245645','�Ĵ�',1004),
('iqu','Ů','2003-06-17','320223546764325418',23,'10920398492','����',1001),
('oqp','��','2003-05-15','334245676432354618',22,'18123454321','̨��',1002),
('qow','��','2003-03-12','320235464324564318',21,'11904932435','�½�',1003),
('wqe','��','2003-02-13','320206654324545318',21,'18800563498','���ɹ�',1004)

insert into ScoreList(StudentId,Csharp,SQLServer,UpdateTime)
values
(10024,88,88,'2021-03-12'),
(10025,78,98,'2021-03-12'),
(10026,82,100,'2021-03-12'),
(10027,100,100,'2021-03-12'),
(10028,73,99,'2021-03-12'),
(10029,73,99,'2021-03-12'),
(10030,85,88,'2021-03-12'),
(10031,81,94,'2021-03-12'),
(10032,91,93,'2021-03-12'),
(10033,94,96,'2021-03-12'),
(10034,95,95,'2021-03-12'),
(10035,96,88,'2021-03-12'),
(10036,98,92,'2021-03-12'),
(10037,91,92,'2021-03-12'),
(10038,73,99,'2021-03-12'),
(10039,93,95,'2021-03-12'),
(10040,98,90,'2021-03-12'),
(10041,88,85,'2021-03-12'),
(10042,83,84,'2021-03-12'),
(10043,81,91,'2021-03-12')


-- �� c# �� SQL���ݿ�����
select Csharp as c#����,SQL���ݿ� = SQLServer from ScoreList where Csharp>90  order by Csharp Desc,SQLServer Desc
-- ��ѯ����
select Csharp as c#����,SQL���ݿ� = SQLServer from ScoreList where Csharp is null

-- ���ƹ̶����� ǰ5��
select top 5 StudentName,Gender,Birthday from Students
-- ���ƹ̶����� �ٷֱ�
select top 50 percent StudentName,Gender,Birthday from Students

-- ��ʱ����
select s.StudentName,s.Gender from Students s   -- Students��ʱ����s


-- ģ����ѯ like ��ʹ��
select StudentAddress from Students where StudentAddress like '����%' 
select StudentAddress from Students where StudentAddress like '%��%' 

-- ģ����ѯ between��ʹ��
select StudentName, Birthday from Students where Birthday between '2003-06-01' and '2003-12-31'
select Csharp as c#����,SQL���ݿ� = SQLServer from ScoreList where Csharp between 85 and 95

--ģ����ѯ in ��ʹ��
select Csharp as c#����,SQL���ݿ� = SQLServer from ScoreList where Csharp in(80,90,91,100)

--�ۺϺ�����ʹ��
select SUM(Csharp) as c#���Է����ܺ�,AVG(Csharp) as c#����ƽ����,Count(*) as c#��������,Max(Csharp)as c#������߷�,Min(Csharp) as c#������ͷ�  from ScoreList


-- �����Ӳ�ѯ
select Students.StudentId,StudentName,Csharp,SQLServer from Students inner join ScoreList on 10>1   
	--10>1 �㶨Ϊ true �������� Students �����е��� �� ScoreList ���е��н���������ϣ����յõ��Ľ�� һ�� 20 * 20 �õ�400������
select Students.StudentId,StudentName,Csharp,SQLServer from Students inner join ScoreList on  Students.StudentId = ScoreList.StudentId	
	-- �� 400 ���� ɸѡ�� ����  Students.StudentId = ScoreList.StudentId �ģ�����ʣ�� 20�У������Ķ�������
select Students.StudentId,StudentName,Csharp,SQLServer from ScoreList inner join Students on  10 > 1 where StudentAddress like '����%'
  -- Students ���ܵ� where ����ֻʣ���� 6�У�ScoreList �������� 20 �� Ȼ�� 6 * 20 120������
select Students.StudentId,StudentName,Csharp,SQLServer from ScoreList inner join Students on  Students.StudentId = ScoreList.StudentId	 where StudentAddress like '����%'
	-- 120���н���ɸѡ�õ�������

	-- inner ����ʡ�ԣ�Ĭ���������Ӳ�ѯ
-- ��������Ӳ�ѯ
select ClassName,Students.StudentId,StudentName,Csharp,SQLServer from Students  -- Students������
inner join ScoreList on 10>1  
inner join StudentClass on 10>1
-- ��������н����������  һ�� 4 * 20 * 20 1600�� ��������ɸѡ
select ClassName,Students.StudentId,StudentName,Csharp,SQLServer from Students  -- Students������
inner join ScoreList on ScoreList.StudentId = Students.StudentId
inner join StudentClass on 10>1
-- �� 1600 ���� ɸѡ������ ScoreList.StudentId = Students.StudentId �ģ��õ�80��
select ClassName,Students.StudentId,StudentName,Csharp,SQLServer from Students  -- Students������
inner join ScoreList on ScoreList.StudentId = Students.StudentId
inner join StudentClass on StudentClass.ClassId = Students.ClassId
-- 1600 ���о���  ScoreList.StudentId = Students.StudentId StudentClass.ClassId = Students.ClassId ������Ҫ���ϵ��вű���������



-- �������Ӳ�ѯ
update Students set StudentAddress = default where StudentName = 'rzy'
update Students set Telephone = null where StudentName = 'rzy'
delete from  ScoreList 
insert into ScoreList(StudentId,Csharp,SQLServer,UpdateTime) values
(10024,99,99,'2021-09-22')

select Students.StudentId,StudentAddress,Telephone,StudentName,Csharp,SQLServer from Students 
left outer join ScoreList on  10>1
-- 20��

select Students.StudentId,StudentAddress,Telephone,StudentName,Csharp,SQLServer from Students 
left outer join ScoreList on  Students.StudentId = ScoreList.StudentId
-- 20�� ֻ��1����û�б���� null��

insert into ScoreList(StudentId,Csharp,SQLServer,UpdateTime) values
(10025,98,98,'2021-09-22')

select Students.StudentId,StudentAddress,Telephone,StudentName,Csharp,SQLServer from Students 
left outer join ScoreList on  10>1
-- 40��

select Students.StudentId,StudentAddress,Telephone,StudentName,Csharp,SQLServer from Students 
left outer join ScoreList on  Students.StudentId = ScoreList.StudentId
-- 20�� ֻ��2����û�б���� null��

--������ű�Ҫ����˳��
delete from ScoreList
delete from Students
delete from StudentClass






-- �����ѯ
insert into StudentClass (ClassId,ClassName) 
values
(1001,'B210315'),
(1002,'B210316'),
(1003,'B210317'),
(1004,'B210318')

insert into Students (StudentName,Gender,Birthday,StudentIdNo,Age,Telephone,StudentAddress,ClassId)
values
('rzy','��','2003-04-06','320206200304062818',19,'18800563498','��������',1001),
('mzg','��','2003-03-22','320453455465654533',20,'18934843943','������ͨ',1002),
('azg','��','2003-09-22','320654354353543818',21,'18190940022','��������',1003),
('mnm','��','2003-08-23','313245899034023203',18,'13459544383','������',1004),
('abc','Ů','2004-02-11','456435220304548183',20,'18805463498','��������',1001),
('opq','��','2003-05-31','320206200356434318',25,'18863423298','�����γ�',1002),
('rxa','��','2003-04-22','320206200765434318',24,'18432343558','�㽭����',1003),
('rjw','��','2003-03-11','320256435643564458',23,'18133422332','����',1004),
('jmc','��','2003-02-28','325643245643546538',23,'13454355448','����',1001),
('qob','Ů','2003-01-31','320564324565324568',19,'18344343458','����',1002),
('eaw','��','2003-11-29','320243567543234548',18,'18456543348','����',1003),
('nee','��','2003-12-30','320265435645634238',18,'18432134343','����',1004),
('hjc','��','2003-10-24','325643245676435668',20,'14535643456','�ӱ�',1001),
('rkq','Ů','2003-09-21','320765432435465438',21,'16543243543','����',1002),
('iei','Ů','2003-08-21','326754356434564348',22,'15643213453','�Ϻ�',1003),
('qei','��','2003-07-18','325643500304062878',24,'15643245645','�Ĵ�',1004),
('iqu','Ů','2003-06-17','320223546764325418',23,'10920398492','����',1001),
('oqp','��','2003-05-15','334245676432354618',22,'18123454321','̨��',1002),
('qow','��','2003-03-12','320235464324564318',21,'11904932435','�½�',1003),
('wqe','��','2003-02-13','320206654324545318',21,'18800563498','���ɹ�',1004)
select * from Students
insert into ScoreList(StudentId,Csharp,SQLServer,UpdateTime)
values
(10065,88,88,'2021-03-12'),
(10066,78,98,'2021-03-12'),
(10067,82,100,'2021-03-12'),
(10068,100,100,'2021-03-12'),
(10069,73,99,'2021-03-12'),
(10070,73,99,'2021-03-12'),
(10071,85,88,'2021-03-12'),
(10072,81,94,'2021-03-12'),
(10073,91,93,'2021-03-12'),
(10074,94,96,'2021-03-12'),
(10075,95,95,'2021-03-12'),
(10076,96,88,'2021-03-12'),
(10077,98,92,'2021-03-12'),
(10078,91,92,'2021-03-12'),
(10079,73,99,'2021-03-12'),
(10080,93,95,'2021-03-12'),
(10081,98,90,'2021-03-12'),
(10082,88,85,'2021-03-12'),
(10083,83,84,'2021-03-12'),
(10084,81,91,'2021-03-12')

-- ����
select ������ = count(*),Students.ClassId from Students inner join 
StudentClass on Students.ClassId = StudentClass.ClassId group by Students.ClassId

-- having �����ڷ���֮���
select ������ = count(*),Students.ClassId,c#ƽ���� = avg(Csharp),sqlserverƽ���� = avg(SQLServer) from Students inner join
ScoreList on Students.StudentId = ScoreList.StudentId group by Students.ClassId having avg(Csharp)>=90


