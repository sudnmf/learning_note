insert into StudentClass (ClassId,ClassName) 
values
(1001,'B210315'),
(1002,'B210316'),
(1003,'B210317'),
(1004,'B210318')

insert into Students (StudentName,Gender,Birthday,StudentIdNo,Age,Telephone,StudentAddress,ClassId)
values
('rzy','男','2003-04-06','320206200304062818',19,'18800563498','江苏无锡',1001),
('mzg','男','2003-03-22','320453455465654533',20,'18934843943','江苏南通',1002),
('azg','男','2003-09-22','320654354353543818',21,'18190940022','江苏徐州',1003),
('mnm','男','2003-08-23','313245899034023203',18,'13459544383','江苏镇江',1004),
('abc','女','2004-02-11','456435220304548183',20,'18805463498','江苏无锡',1001),
('opq','男','2003-05-31','320206200356434318',25,'18863423298','江苏盐城',1002),
('rxa','男','2003-04-22','320206200765434318',24,'18432343558','浙江杭州',1003),
('rjw','男','2003-03-11','320256435643564458',23,'18133422332','甘肃',1004),
('jmc','男','2003-02-28','325643245643546538',23,'13454355448','湖南',1001),
('qob','女','2003-01-31','320564324565324568',19,'18344343458','海南',1002),
('eaw','男','2003-11-29','320243567543234548',18,'18456543348','湖北',1003),
('nee','男','2003-12-30','320265435645634238',18,'18432134343','河南',1004),
('hjc','男','2003-10-24','325643245676435668',20,'14535643456','河北',1001),
('rkq','女','2003-09-21','320765432435465438',21,'16543243543','北京',1002),
('iei','女','2003-08-21','326754356434564348',22,'15643213453','上海',1003),
('qei','男','2003-07-18','325643500304062878',24,'15643245645','四川',1004),
('iqu','女','2003-06-17','320223546764325418',23,'10920398492','西藏',1001),
('oqp','男','2003-05-15','334245676432354618',22,'18123454321','台湾',1002),
('qow','男','2003-03-12','320235464324564318',21,'11904932435','新疆',1003),
('wqe','男','2003-02-13','320206654324545318',21,'18800563498','内蒙古',1004)

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


-- 对 c# 和 SQL数据库排序
select Csharp as c#语言,SQL数据库 = SQLServer from ScoreList where Csharp>90  order by Csharp Desc,SQLServer Desc
-- 查询空列
select Csharp as c#语言,SQL数据库 = SQLServer from ScoreList where Csharp is null

-- 限制固定行数 前5行
select top 5 StudentName,Gender,Birthday from Students
-- 限制固定行数 百分比
select top 50 percent StudentName,Gender,Birthday from Students

-- 临时表名
select s.StudentName,s.Gender from Students s   -- Students临时表名s


-- 模糊查询 like 的使用
select StudentAddress from Students where StudentAddress like '江苏%' 
select StudentAddress from Students where StudentAddress like '%无%' 

-- 模糊查询 between的使用
select StudentName, Birthday from Students where Birthday between '2003-06-01' and '2003-12-31'
select Csharp as c#语言,SQL数据库 = SQLServer from ScoreList where Csharp between 85 and 95

--模糊查询 in 的使用
select Csharp as c#语言,SQL数据库 = SQLServer from ScoreList where Csharp in(80,90,91,100)

--聚合函数的使用
select SUM(Csharp) as c#语言分数总和,AVG(Csharp) as c#语言平均分,Count(*) as c#考试人数,Max(Csharp)as c#语言最高分,Min(Csharp) as c#语言最低分  from ScoreList


-- 内连接查询
select Students.StudentId,StudentName,Csharp,SQLServer from Students inner join ScoreList on 10>1   
	--10>1 恒定为 true 因此其就是 Students 表所有的行 和 ScoreList 所有的行进行排列组合，最终得到的结果 一共 20 * 20 得到400行数据
select Students.StudentId,StudentName,Csharp,SQLServer from Students inner join ScoreList on  Students.StudentId = ScoreList.StudentId	
	-- 在 400 行中 筛选出 满足  Students.StudentId = ScoreList.StudentId 的，最终剩下 20行，其他的都不满足
select Students.StudentId,StudentName,Csharp,SQLServer from ScoreList inner join Students on  10 > 1 where StudentAddress like '江苏%'
  -- Students 表受到 where 限制只剩下了 6行，ScoreList 表依旧是 20 行 然后 6 * 20 120行数据
select Students.StudentId,StudentName,Csharp,SQLServer from ScoreList inner join Students on  Students.StudentId = ScoreList.StudentId	 where StudentAddress like '江苏%'
	-- 120行中进行筛选得到的数据

	-- inner 可以省略，默认是内连接查询
-- 多表内连接查询
select ClassName,Students.StudentId,StudentName,Csharp,SQLServer from Students  -- Students是主表
inner join ScoreList on 10>1  
inner join StudentClass on 10>1
-- 三个表的行进行排列组合  一共 4 * 20 * 20 1600行 并不进行筛选
select ClassName,Students.StudentId,StudentName,Csharp,SQLServer from Students  -- Students是主表
inner join ScoreList on ScoreList.StudentId = Students.StudentId
inner join StudentClass on 10>1
-- 在 1600 行中 筛选出符合 ScoreList.StudentId = Students.StudentId 的，得到80行
select ClassName,Students.StudentId,StudentName,Csharp,SQLServer from Students  -- Students是主表
inner join ScoreList on ScoreList.StudentId = Students.StudentId
inner join StudentClass on StudentClass.ClassId = Students.ClassId
-- 1600 行中经过  ScoreList.StudentId = Students.StudentId StudentClass.ClassId = Students.ClassId 两个都要符合的行才被保留下来



-- 左外连接查询
update Students set StudentAddress = default where StudentName = 'rzy'
update Students set Telephone = null where StudentName = 'rzy'
delete from  ScoreList 
insert into ScoreList(StudentId,Csharp,SQLServer,UpdateTime) values
(10024,99,99,'2021-09-22')

select Students.StudentId,StudentAddress,Telephone,StudentName,Csharp,SQLServer from Students 
left outer join ScoreList on  10>1
-- 20行

select Students.StudentId,StudentAddress,Telephone,StudentName,Csharp,SQLServer from Students 
left outer join ScoreList on  Students.StudentId = ScoreList.StudentId
-- 20行 只有1行是没有被填充 null的

insert into ScoreList(StudentId,Csharp,SQLServer,UpdateTime) values
(10025,98,98,'2021-09-22')

select Students.StudentId,StudentAddress,Telephone,StudentName,Csharp,SQLServer from Students 
left outer join ScoreList on  10>1
-- 40行

select Students.StudentId,StudentAddress,Telephone,StudentName,Csharp,SQLServer from Students 
left outer join ScoreList on  Students.StudentId = ScoreList.StudentId
-- 20行 只有2行是没有被填充 null的

--清空三张表，要按照顺序
delete from ScoreList
delete from Students
delete from StudentClass






-- 分组查询
insert into StudentClass (ClassId,ClassName) 
values
(1001,'B210315'),
(1002,'B210316'),
(1003,'B210317'),
(1004,'B210318')

insert into Students (StudentName,Gender,Birthday,StudentIdNo,Age,Telephone,StudentAddress,ClassId)
values
('rzy','男','2003-04-06','320206200304062818',19,'18800563498','江苏无锡',1001),
('mzg','男','2003-03-22','320453455465654533',20,'18934843943','江苏南通',1002),
('azg','男','2003-09-22','320654354353543818',21,'18190940022','江苏徐州',1003),
('mnm','男','2003-08-23','313245899034023203',18,'13459544383','江苏镇江',1004),
('abc','女','2004-02-11','456435220304548183',20,'18805463498','江苏无锡',1001),
('opq','男','2003-05-31','320206200356434318',25,'18863423298','江苏盐城',1002),
('rxa','男','2003-04-22','320206200765434318',24,'18432343558','浙江杭州',1003),
('rjw','男','2003-03-11','320256435643564458',23,'18133422332','甘肃',1004),
('jmc','男','2003-02-28','325643245643546538',23,'13454355448','湖南',1001),
('qob','女','2003-01-31','320564324565324568',19,'18344343458','海南',1002),
('eaw','男','2003-11-29','320243567543234548',18,'18456543348','湖北',1003),
('nee','男','2003-12-30','320265435645634238',18,'18432134343','河南',1004),
('hjc','男','2003-10-24','325643245676435668',20,'14535643456','河北',1001),
('rkq','女','2003-09-21','320765432435465438',21,'16543243543','北京',1002),
('iei','女','2003-08-21','326754356434564348',22,'15643213453','上海',1003),
('qei','男','2003-07-18','325643500304062878',24,'15643245645','四川',1004),
('iqu','女','2003-06-17','320223546764325418',23,'10920398492','西藏',1001),
('oqp','男','2003-05-15','334245676432354618',22,'18123454321','台湾',1002),
('qow','男','2003-03-12','320235464324564318',21,'11904932435','新疆',1003),
('wqe','男','2003-02-13','320206654324545318',21,'18800563498','内蒙古',1004)
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

-- 分组
select 总人数 = count(*),Students.ClassId from Students inner join 
StudentClass on Students.ClassId = StudentClass.ClassId group by Students.ClassId

-- having 作用于分组之后的
select 总人数 = count(*),Students.ClassId,c#平均分 = avg(Csharp),sqlserver平均分 = avg(SQLServer) from Students inner join
ScoreList on Students.StudentId = ScoreList.StudentId group by Students.ClassId having avg(Csharp)>=90


