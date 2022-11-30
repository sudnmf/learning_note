# 基于oop设计项目的基本方法

![image-20220927150034250](Csharp项目开发笔记.assets/image-20220927150034250.png)

![image-20220927150733281](Csharp项目开发笔记.assets/image-20220927150733281.png)







# 模块封装与程序集

## 程序模块的封装

回顾之前计算器设计的问题

![image-20221010191157844](Csharp项目开发笔记.assets/image-20221010191157844.png)

计算器类的实现

![image-20221010191216645](Csharp项目开发笔记.assets/image-20221010191216645.png)

面向对象最基本的要求：按照需要设计类，并且在适时创建对象并使用这个类

面向对象希望程序具有可扩展可维护性



![image-20221010191327854](Csharp项目开发笔记.assets/image-20221010191327854.png)

每个人写不同的模块，然后把模块组装在一起，这样软件的实现就是基于模块，模块也就是类库，类库是模块的一种类型



如何添加类库

![image-20221010191541946](Csharp项目开发笔记.assets/image-20221010191541946.png)

这个类库可以添加我们所需要的全部类



类库里的被如果希望这个类被其他地方，就加public，如果不加 public 就是 internal，只能在这个程序集(这个模块)的内部使用

![image-20221010191635067](Csharp项目开发笔记.assets/image-20221010191635067.png)



实际操作

![image-20221010192328562](Csharp项目开发笔记.assets/image-20221010192328562.png)

选择类库

![image-20221010192423521](Csharp项目开发笔记.assets/image-20221010192423521.png)



在这个类库中可以编写多个类

![image-20221010192655781](Csharp项目开发笔记.assets/image-20221010192655781.png)

这个类库中的类编写完后，让这个项目进行 生成，就能生成 dll 文件

![image-20221010192747861](Csharp项目开发笔记.assets/image-20221010192747861.png)

![image-20221010192847286](Csharp项目开发笔记.assets/image-20221010192847286.png)

在 文件夹中找到该类库 dll 文件

![image-20221010192918952](Csharp项目开发笔记.assets/image-20221010192918952.png)



在希望引入该类库的项目中进行添加引用

![image-20221010192959744](Csharp项目开发笔记.assets/image-20221010192959744.png)

![image-20221010193118259](Csharp项目开发笔记.assets/image-20221010193118259.png)



成功引入

![image-20221010193127425](Csharp项目开发笔记.assets/image-20221010193127425.png)



如果想要使用还需要引入命名空间

![image-20221010193712820](Csharp项目开发笔记.assets/image-20221010193712820.png)





dll  动态链接库

![image-20221010193654190](Csharp项目开发笔记.assets/image-20221010193654190.png)

这个dll 文件只限定于 .Net 平台生成的 dll 文件

![image-20221010193800275](Csharp项目开发笔记.assets/image-20221010193800275.png)

模块封装的应用

![image-20221010193938290](Csharp项目开发笔记.assets/image-20221010193938290.png)



## **.NET中的程序集**

.Net Core 项目里的Assemblyinfo.cs 文件找不到了









程序集信息修改

![image-20221010195437054](Csharp项目开发笔记.assets/image-20221010195437054.png)

这些信息可以通过右键项目属性可视化的方式进行更改

右键项目属性

![image-20221010195125780](Csharp项目开发笔记.assets/image-20221010195125780.png)

![image-20221010195622824](Csharp项目开发笔记.assets/image-20221010195622824.png)

![image-20221010195731213](Csharp项目开发笔记.assets/image-20221010195731213.png)



![image-20221010195808818](Csharp项目开发笔记.assets/image-20221010195808818.png)



命名空间和程序集(项目)的关系

相同的命名空间可以分布在不同的程序集里面。通常会有一个顶级的命名空间







## **多语言编程原理**

![image-20221010220539626](Csharp项目开发笔记.assets/image-20221010220539626.png)

CalDLLVB 类

![image-20221010220801881](Csharp项目开发笔记.assets/image-20221010220801881.png)



Csharp项目中添加 VB引用

![image-20221010220955374](Csharp项目开发笔记.assets/image-20221010220955374.png)

依旧引入命名空间

![image-20221010221109420](Csharp项目开发笔记.assets/image-20221010221109420.png)

Csharp 和 VB可以混编

### 多语言编程原理

![image-20221010221152068](Csharp项目开发笔记.assets/image-20221010221152068.png)

![image-20221010221354843](Csharp项目开发笔记.assets/image-20221010221354843.png)

原理分析

![image-20221010221550755](Csharp项目开发笔记.assets/image-20221010221550755.png)



# 学生管理系统项目

## 主窗体UI

![image-20221012124532376](Csharp项目开发笔记.assets/image-20221012124532376.png)











## 项目框架设计实践

### **搭建学员管理系统框架**

回顾类库好处

![image-20221011115515307](Csharp项目开发笔记.assets/image-20221011115515307.png)

小型项目，通常用两层项目框架实现

![image-20221011115650975](Csharp项目开发笔记.assets/image-20221011115650975.png)

- UI，就是用户交互的窗体，这是表示层
- Models，数据访问层，存储一大堆数据访问类(实体类)
- DAL层，用于和数据库交互，这是交互层



<font color=red size=5>创建项目结构层次</font>

创建窗体项目 StudentManager，两个类库： DAL Models 

![image-20221011120322598](Csharp项目开发笔记.assets/image-20221011120322598.png)

添加引用，建立关联：DAL添加对Models的引用。StudentManager添加对Models 和 DAL的引用

![image-20221011120526380](Csharp项目开发笔记.assets/image-20221011120526380.png)

如果此时你能够成功生成解决方案，那么到这里位置是ok的

![image-20221011120916543](Csharp项目开发笔记.assets/image-20221011120916543.png)





<font color=red size=5>UI界面设计</font>





<font color=red size=5>设计实体类</font>

添加实体类，取决于具体的需要，取决于你当前项目要访问的数据库

![image-20221011121152576](Csharp项目开发笔记.assets/image-20221011121152576.png)

根据数据表添加实体类

Admins 变成 SysAdmin 类

Students 变成 Student 类

StudentClass 变成 StudentClass 类

ScoreList 变成 ScoreList 类

![image-20221011121617768](Csharp项目开发笔记.assets/image-20221011121617768.png)



类具有哪些属性对照数据表的列名

```
public class SysAdmin{
	
}
```

![image-20221011121405093](Csharp项目开发笔记.assets/image-20221011121405093.png)





数据库实体类和c#中的数据访问类是一一对应的

扩展实体在需要用的时候再加



<font color=red size=5>设计数据访问类</font>

数据访问类(DAL层)和实体类(Models层)一般有对应关系



数据访问类访问修饰符全部是public

![image-20221011122008940](Csharp项目开发笔记.assets/image-20221011122008940.png)

### **数据库连接的安全保障**

SQLHelper类的编写

![image-20221011122336818](Csharp项目开发笔记.assets/image-20221011122336818.png)

SQLHelper 通常创建一个文件夹来放入这个类

如果就在这个文件夹结构内部添加，那么命名空间会更改，变得和别的命名空间不同，就需要单独引入。

通常都是在外部创建然后再引入该文件夹，保持命名空间和别的一致



写之前记得添加包 SqlClient

![image-20221011123543354](Csharp项目开发笔记.assets/image-20221011123543354.png)



问题：如果改密码了，但是csharp中字符串，我们希望其是可变的动态的。

![image-20221011124739129](Csharp项目开发笔记.assets/image-20221011124739129.png)

方法：使用配置文件

![image-20221011124823719](Csharp项目开发笔记.assets/image-20221011124823719.png)

修改配置文件是很方便的





必须只能在UI层添加配置文件，并且在根目录，而且名字不可以更改，就使用默认的 App.config 

![image-20221011125204532](Csharp项目开发笔记.assets/image-20221011125204532.png)



![image-20221011125225177](Csharp项目开发笔记.assets/image-20221011125225177.png)

![image-20221011125259988](Csharp项目开发笔记.assets/image-20221011125259988.png)



使用 connectionStrings 结点

![image-20221011125411933](Csharp项目开发笔记.assets/image-20221011125411933.png)

依照 路径字符串属性，字符串名，字符串内容来写 add 结点的name 属性和 connectionString 属性

private static string connString = "Data Source=.;Initial Catalog=StudentManageDB;User id=sa;Password=asdjkl123; ";



```
<?xml version="1.0" encoding="utf-8" ?>
<configuration>
	<connectionStrings>
					//这里写
		<add name ="connString" connectionString="Data Source=.;Initial Catalog=StudentManageDB;User id=sa;Password=asdjkl123; "/>
	</connectionStrings>
</configuration>
```



在DAL层中，需要使用配置文件的地方引入命名空间   using System.Configuration; 用于读取配置文件

要引入这个包 Configuration Manager

![image-20221011134118844](Csharp项目开发笔记.assets/image-20221011134118844.png)

```
																			//name属性的名字
private static string connString = ConfigurationManager.ConnectionStrings["connString"].ToString();
```



![image-20221011135021645](Csharp项目开发笔记.assets/image-20221011135021645.png)

![image-20221011135054223](Csharp项目开发笔记.assets/image-20221011135054223.png)

![image-20221011135436702](Csharp项目开发笔记.assets/image-20221011135436702.png)



reaonly 和 const 属性

![image-20221011135629885](Csharp项目开发笔记.assets/image-20221011135629885.png)

这就是刚才写的 config 文件

![image-20221011140015142](Csharp项目开发笔记.assets/image-20221011140015142.png)

![image-20221011140158188](Csharp项目开发笔记.assets/image-20221011140158188.png)

UI层下的字符串加密类

![image-20221011140339708](Csharp项目开发笔记.assets/image-20221011140339708.png)



## 用户登录逻辑与实现

### 显示登录窗体

![image-20221011154257991](Csharp项目开发笔记.assets/image-20221011154257991.png)

用户登录逻辑

![image-20221011154351336](Csharp项目开发笔记.assets/image-20221011154351336.png)



![image-20221011154810533](Csharp项目开发笔记.assets/image-20221011154810533.png)

```
Program.cs //程序入口

static void Main()
        {
            // To customize application configuration such as set high DPI settings or default font,
            // see https://aka.ms/applicationconfiguration.
            ApplicationConfiguration.Initialize();


            //创建登录窗体
            FrmUserLogin objFrmLogin = new FrmUserLogin();
            DialogResult result = objFrmLogin.ShowDialog();//ShowDialog 方法 模态显示，模态窗体不允许操作其他窗体，该模态窗体弹出后组织调用窗口的所有消息响应。只有在弹出窗口结束后调用窗口才能继续
            //ShowDialog 方法返回DialogResult 类型的值，是枚举类型

            //根据 result 值判断登录是否成功
            if (result == DialogResult.OK)  // 如果我们在登录窗体直接右上角退出 ，result 不等于 DialogResult.OK

            {
                Application.Run(new Form1());
            }
            //不ok 就表示不想登录，整个程序退出
            else
            {
                Application.Exit();//退出整个程序
            }
            
        }
```





该UI界面

![image-20221011154843405](Csharp项目开发笔记.assets/image-20221011154843405.png)



### **登录后台方法编写**



DAL(与数据库的交互层)层中的SysAdminService类 中的AdminLogin 方法，作用是根据前台输入的账号和密码在数据库中查找是否有该用户



```
SysAdminService 类中
public SysAdmin AdminLogin(SysAdmin objAdmin){
	//组合SQL语句
	string sql = "select AdminName from Admins where Loginid=‘{0}’ and LoginPwd = '{1}'";
	sql = string.Format(sql,objAdmin.LoginId,objAdmin.LoginPwd);
	//从数据库中查询
	SqlDataReader objReader = SQLHelper.GetReader(sql);
	if(objReader.Read()){
		objAdmin.AdminName = objReader["AdminName"].ToString();
	}
	else
	{
		objAdmin = null;//如果登录不成功，将当前对象清空
	}
	objReader.Close();
	//返回结果
	return objAdmin;
}
```



### 登录窗体中的事件处理

![image-20221011173104142](Csharp项目开发笔记.assets/image-20221011173104142.png)

```
SysAdmin objAdmin = new SysAdmin(){
	LoginId = this.ToInt32(this.txtusername.Text.Trim());
	LoginPwd = this.txtpassword.Text.Trim();
}
// [3] 和后台交互判断登录信息是否正确
try{
	objAdmin = objAdminService.AdminLogin(objAdmin);
	if(objAdmin !=null){
		// 如果登录成功了
		//保存登录 信息，Program.cs 程序入口类设置全局变量保存当前正在上机的用户信息
	}
	else{
		MessageBox.Show("登录账号不存在或密码错误","登录提示");
	}
} catch(Exception ex){
	MessageBox.Show("数据访问出现异常!","登录提示");
}
```

![image-20221011173506449](Csharp项目开发笔记.assets/image-20221011173506449.png)

![image-20221011173747850](Csharp项目开发笔记.assets/image-20221011173747850.png)





输入回车自动使下一个输入框获取焦点

![image-20221011174653321](Csharp项目开发笔记.assets/image-20221011174653321.png)

![image-20221011174746345](Csharp项目开发笔记.assets/image-20221011174746345.png)

![image-20221011174847136](Csharp项目开发笔记.assets/image-20221011174847136.png)







登录窗体和事件成品

![image-20221011232111322](Csharp项目开发笔记.assets/image-20221011232111322.png)

![image-20221011232347445](Csharp项目开发笔记.assets/image-20221011232347445.png)

Program.cs 中的全局变量，保存登录的用户信息

![image-20221011232248097](Csharp项目开发笔记.assets/image-20221011232248097.png)

```
//UI界面的事件
private void btnLogin_Click(object sender, EventArgs e)
        {
            // [1] 数据验证
            if (this.txtusername.Text.Trim().Length == 0)
            {
                MessageBox.Show("请输入登录账号！", "登录提示");
                this.txtusername.Focus();//用户名输入框获取焦点
                return;
            }
            if (this.txtpassword.Text.Trim().Length == 0)
            {
                MessageBox.Show("请输入密码!","登录提示");
                this.txtpassword.Focus();
                return;
            }
            // [2] 封装对象
            SysAdmin objAdmin = new SysAdmin()
            {
                LoginId = this.txtusername.Text.Trim(),
                LoginPwd = this.txtpassword.Text.Trim()
            };
            SysAdminService objAdminService = new SysAdminService();
            // [3] 和后台交互判断登录信息是否正确
            try
            {
                objAdmin = objAdminService.AdminLogin(objAdmin);
                if (objAdmin != null)
                {
                    // 如果登录成功了
                    //保存登录 信息，Program.cs 程序入口类设置全局变量保存当前正在上机的用户信息
                    Program.objCurrentAdmin = objAdmin;

                    //设置登录窗体的返回值
                    this.DialogResult = DialogResult.OK;
                    //关闭当前登录窗体(关闭 FrmUserLogin)
                    this.Close();
                }
                else
                {
                    MessageBox.Show("登录账号不存在或密码错误", "登录提示");
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("数据访问出现异常!", "登录提示");
            }

        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void txtusername_KeyDown(object sender, KeyEventArgs e)
        {
            if(e.KeyCode == Keys.Enter)//如果用户选中当前组件并且按下回车
            {
                if(this.txtusername.Text.Trim().Length!= 0)//用户已经在这个框里面输入了一些东西
                {
                    this.txtpassword.Focus();//当前焦点移动到密码框
                }
            }
        }

        private void txtpassword_KeyDown(object sender, KeyEventArgs e)
        {
            if(e.KeyCode == Keys.Enter)
            {
                btnLogin_Click(null, null);
            }
        }
```





### **通用验证类的设计和程序退出**

![image-20221012123844512](Csharp项目开发笔记.assets/image-20221012123844512.png)

使用正则表达式

![image-20221012123937806](Csharp项目开发笔记.assets/image-20221012123937806.png)



![image-20221012124220538](Csharp项目开发笔记.assets/image-20221012124220538.png)

![image-20221012124644975](Csharp项目开发笔记.assets/image-20221012124644975.png)





![image-20221012124956853](Csharp项目开发笔记.assets/image-20221012124956853.png)



![image-20221012125152972](Csharp项目开发笔记.assets/image-20221012125152972.png)







### 避免开启多个同一个窗体

![image-20221012123129841](Csharp项目开发笔记.assets/image-20221012123129841.png)

设置一个静态成员变量，如果不为空说明已经有一个这种窗体被打开了，那就把它激活



将该窗体关闭的同时，也需要把这个静态成员变量置空

![image-20221012123620193](Csharp项目开发笔记.assets/image-20221012123620193.png)



不要使用 showdialog() 如果使用showdialog()，该窗体关闭前都不能操作其他窗体

![image-20221012123736667](Csharp项目开发笔记.assets/image-20221012123736667.png)









## 基于oop实现系统功能

### 下拉框的数据绑定

先获取数据源(从DAL层中获取，StudentClassService类负责和数据库交互)

![image-20221013212433833](Csharp项目开发笔记.assets/image-20221013212433833.png)

```
public List<StudentClass> GetAllClasses(){
	string sql = "select ClassName,ClassId from StudentClass";
	SqlDataReader objReader = SQLHelper.GetReader(sql);
	List<StudentClass> list = new List<StudentClass>();
	while(objReader.Reader()){
		list.Add({
			ClassId = Convert.ToInt32(objReader["ClassId"]);
			ClassName = objReader["ClassName"].ToString();
		});
	}
	objReader.Close();
	return list;
}
```



使用数据源对下拉框的初始化需要在窗口初始化完成后立刻就完成(在窗口构造器中)

![image-20221013213010910](Csharp项目开发笔记.assets/image-20221013213010910.png)

### **添加学员对象后台数据访问方法的实现**

- 把用户输入的数据封装到对象里面

- 封装之前要进行验证

  身份证号格式是否符合可以不依靠数据库实现(正则表达式)

  身份证号是否已经存在要靠遍历数据库中的id号来进行判断

  ![image-20221013213943667](Csharp项目开发笔记.assets/image-20221013213943667.png)

- 把封装的对象传递到DAL层，DAL层负责和数据库交互，向数据库发送命令

  StudentService类

  ![image-20221013215204836](Csharp项目开发笔记.assets/image-20221013215204836.png)

  ```
  stringBuilder sqlBuilder = new StringBuilder();
  sqlBuilder.Append("insert into Students(StudentName,Gender,Birthday,StudentIdNo,Age,Telephone,StudentAddress,CardId,ClassId)");
  sqlBuilder.Append("values('{0}','{1}','{2}',{3},{4},'{5}','{6}','{7}',{8})); //凡是数据库中是字符串数据类型的都需要加引号
  string sql = string.Format(sqlBuilder.ToString(),objstu.StudentName,objstu.Gender,objstu.Birthday,objstu.StudentIdNo,objstu.Age,objstu.Telephone,objstu.StudentAddress,objstu.CardId,objstu.ClassId);
  ```

  



### 添加学员对象ui实现

![image-20221013215658127](Csharp项目开发笔记.assets/image-20221013215658127.png)

点击确认按钮后先进行一系列验证，然后添加对象



![image-20221013220732089](Csharp项目开发笔记.assets/image-20221013220732089.png)

![image-20221013220814256](Csharp项目开发笔记.assets/image-20221013220814256.png)

![image-20221013221128347](Csharp项目开发笔记.assets/image-20221013221128347.png)

开始封装数据

![image-20221013215734488](Csharp项目开发笔记.assets/image-20221013215734488.png)



### 按照班级查询学员对象

![image-20221015080433356](Csharp项目开发笔记.assets/image-20221015080433356.png)



FrmMain 窗口中通过按钮打开这个窗口

![image-20221015083435258](Csharp项目开发笔记.assets/image-20221015083435258.png)



下拉框数据初始化

![image-20221015083317704](Csharp项目开发笔记.assets/image-20221015083317704.png)



设置扩展类，通过继承的方式扩展(StudentExt类)

![image-20221015083757301](Csharp项目开发笔记.assets/image-20221015083757301.png)

目前的扩展实体只有ClassName

![image-20221015083951978](Csharp项目开发笔记.assets/image-20221015083951978.png)



StudentService类中的方法，按照班级名称查找学员

![image-20221015084605756](Csharp项目开发笔记.assets/image-20221015084605756.png)

FrmStuManager 查询按钮添加



![image-20221015085457143](Csharp项目开发笔记.assets/image-20221015085457143.png)



### **根据学号查询学员对象详细信息**

![image-20221015093917043](Csharp项目开发笔记.assets/image-20221015093917043.png)

后台代码

![image-20221015093857115](Csharp项目开发笔记.assets/image-20221015093857115.png)

前台UI代码

![image-20221015094405940](Csharp项目开发笔记.assets/image-20221015094405940.png)

这里会生成新的窗体FrmStudentInfo窗体构造器，展示数据

![image-20221015094808401](Csharp项目开发笔记.assets/image-20221015094808401.png)

![image-20221015095030736](Csharp项目开发笔记.assets/image-20221015095030736.png)

FrmMain 主窗体类中通常添加其他子窗体的作为静态成员，关闭后再释放位Null。

![image-20221015095331506](Csharp项目开发笔记.assets/image-20221015095331506.png)

### **修改学员信息**

窗口样式

![image-20221015101304007](Csharp项目开发笔记.assets/image-20221015101304007.png)

StudentService类中

修改学员对象方法

![image-20221015100120106](Csharp项目开发笔记.assets/image-20221015100120106.png)

修改学员时判断是否和其他学员重复

![image-20221015100532351](Csharp项目开发笔记.assets/image-20221015100532351.png)





前台UI代码

![image-20221015100821572](Csharp项目开发笔记.assets/image-20221015100821572.png)

![image-20221015101243281](Csharp项目开发笔记.assets/image-20221015101243281.png)

FrmEditStudent 窗口

展示该窗口的时候应该显示该窗口曾经的数据

![image-20221015101615755](Csharp项目开发笔记.assets/image-20221015101615755.png)



FrmEditStudentUI代码

点击修改按钮后

![image-20221015102047315](Csharp项目开发笔记.assets/image-20221015102047315.png)

![image-20221015102135852](Csharp项目开发笔记.assets/image-20221015102135852.png)

提交后台

![image-20221015102518473](Csharp项目开发笔记.assets/image-20221015102518473.png)

FrmStudentManage中，如果收到了 FrmEdit 中传来的修改成功的消息，就对页面进行刷新，这里使用的刷新的方法是再进行一次查询(这种只适合查询数据量小的语句)

![image-20221015102720740](Csharp项目开发笔记.assets/image-20221015102720740.png)





#### 改善用户体验

右键菜单设计

设置右键会弹出来什么菜单。DataGridView中的contextMenuStrip属性指定你要哪个 ContextMenuStrip组件作为右键菜单

![image-20221015103347394](Csharp项目开发笔记.assets/image-20221015103347394.png)

![image-20221015103840721](Csharp项目开发笔记.assets/image-20221015103840721.png)







给DataView 添加单元格双击事件。

CellDoubleClick事件

![image-20221015103033943](Csharp项目开发笔记.assets/image-20221015103033943.png)

就是调用了点击查询按钮的方法

![image-20221015103154431](Csharp项目开发笔记.assets/image-20221015103154431.png)



### 删除学员

后台代码

外键异常返回错误号 547

![image-20221015104205483](Csharp项目开发笔记.assets/image-20221015104205483.png)



前台代码UI

![image-20221015104444020](Csharp项目开发笔记.assets/image-20221015104444020.png)

![image-20221015104603618](Csharp项目开发笔记.assets/image-20221015104603618.png)

