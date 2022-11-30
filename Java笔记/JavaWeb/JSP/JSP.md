

# **JSP简介**

![image-20221105142004100](JSP.assets/image-20221105142004100.png)

![image-20221105142013849](JSP.assets/image-20221105142013849.png)

## 前后端分离

![image-20221105142220866](JSP.assets/image-20221105142220866.png)



# JSP原理

JSP是运行在服务端的视图技术

![image-20221105144814078](JSP.assets/image-20221105144814078.png)

客户端请求.jsp时候，如果这个.jsp是第一次被请求，那么web容器(tomcat)，把.jsp转换成servlet并执行这个servlet

怎么转换成servlet：先转换成.java的源文件，该文件名字是 xxx_jsp.java

web容器并不是每次有浏览器请求jsp都会进行编译。只有两种情况会进行编译

一：.jsp第一次被请求    二：该.jsp发生修改了

![image-20221105145144943](JSP.assets/image-20221105145144943.png)

这里是IDEA创建出来的复制Tomcat的目录

![image-20221105145405006](JSP.assets/image-20221105145405006.png)

内部全是 java 代码

![image-20221105145447540](JSP.assets/image-20221105145447540.png)

![image-20221105145511815](JSP.assets/image-20221105145511815.png)







# 引入 JSP jar包

![image-20221105150628041](JSP.assets/image-20221105150628041.png)

# **JSP三种原始标签**

![image-20221105145838129](JSP.assets/image-20221105145838129.png)

原始标签在jsp任何版本都能使用。但还有些标签对jsp版本有要求

java代码不允许随处编写，必须放在特定java标签内

html代码放置位置是任意的

## JSP声明标签

![image-20221105150415612](JSP.assets/image-20221105150415612.png)<%!    %> 中的内容会出现在 Servlet 的 class的{} 中



看index.jsp中我们写的java代码会出现在哪里

![image-20221105151753079](JSP.assets/image-20221105151753079.png)

![image-20221105152815857](JSP.assets/image-20221105152815857.png)

## **JSP脚本标签**

<%    %>

脚本标签被编译后出现在 _jspService 的方法体中，所以只能写局部变量不能写方法

![image-20221105152934131](JSP.assets/image-20221105152934131.png)

## **JSP赋值标签**

![image-20221105153408903](JSP.assets/image-20221105153408903.png)

<%=               %>

赋值标签中的内容最后不要加 分号;

```
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <%!
    int a=1;
    int fun(int a,int b){return a+b;}
  %>

  <%= 1%>
  <%= fun(10,100)%>
  $END$
  </body>
</html>
```



三种原始标签就是 对应 java 代码中的三个 位置 分别 类大括号  方法大括号    要打印的内容

![image-20221105153513990](JSP.assets/image-20221105153513990.png)

## **JSP三种原始标签的使用**

**jsp原始标签不允许彼此之间嵌套**



jsp页面模拟抽奖功能

```
<%@ page import="java.util.Random" %><%--
  Created by IntelliJ IDEA.
  User: 18800563498
  Date: 2022/11/5
  Time: 15:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    int flag = new Random().nextInt(100);
    String str = "";
    if(flag<=20){
        str="中奖了";
    }else{
        str="再试试";
    }
%>
<%= str%>
</body>
</html>

```



也可以



```
<%@ page import="java.util.Random" %><%--
  Created by IntelliJ IDEA.
  User: 18800563498
  Date: 2022/11/5
  Time: 15:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    int flag = new Random().nextInt(100);
    if(flag<=20){ // 满足flag<=20 就输出 中奖了 这个范围的内容
%>
中奖了
<%}else{%>
    再试试
<%}
%>
</body>
</html>
```



# JSP指令标签

![image-20221105155010371](JSP.assets/image-20221105155010371.png)

属性之间用 空格分隔，属性的值之间用,分隔



page指令标签的含义

```
<%@ page import="java.util.Random" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
```

## page指令标签以及属性

![image-20221105155109654](JSP.assets/image-20221105155109654.png)

contentType 后面那个编码能够设置页面编码和响应编码，如果pageEncoding属性也设置后那么页面属性看页面编码

![image-20221105155649932](JSP.assets/image-20221105155649932.png)

session 属性 默认是 true ，建立会话

![image-20221105155730424](JSP.assets/image-20221105155730424.png)

![image-20221105155759909](JSP.assets/image-20221105155759909.png)

## include指令标签

![image-20221105155908749](JSP.assets/image-20221105155908749.png)

## TagLib标签

![image-20221105160016932](JSP.assets/image-20221105160016932.png)

# **JSP的内置对象**

![image-20221105160230250](JSP.assets/image-20221105160230250.png)

![image-20221105160244656](JSP.assets/image-20221105160244656.png)





![image-20221105160506108](JSP.assets/image-20221105160506108.png)

![image-20221105160637079](JSP.assets/image-20221105160637079.png)









![image-20221105160425701](JSP.assets/image-20221105160425701.png)

# **请求转发**

![image-20221105160840149](JSP.assets/image-20221105160840149.png)

![image-20221105160945474](JSP.assets/image-20221105160945474.png)

## 请求转发与重定向的区别

![image-20221105161122882](JSP.assets/image-20221105161122882.png)

请求转发完全是服务端内部发生的，与客户端无关

请求转发全程只有一个 request，而重定向会有两个响应，第一个request在产生响应的时候生命周期就结束了

DML 表示添加修改删除数据库。查询要使用请求转发

## **请求转发案例**

Servlet去做视图的查询，jsp去做视图的生成。jsp中通常不会有过的的java代码



![image-20221105162357337](JSP.assets/image-20221105162357337.png)

getRequestDispatcher(相对路径) 该相对路径 是默认在项目中webapps 文件夹内  

getRequestDispatcher(你写的路径)  就相当于访问     webapps/你写的路径 

![image-20221105162616808](JSP.assets/image-20221105162616808.png)



# **JSP四大作用域对象**

![image-20221105171042706](JSP.assets/image-20221105171042706.png)

request对象通常用于数据的存储

# **JSTL标签库介绍**

![image-20221105172324868](JSP.assets/image-20221105172324868.png)

## JSTL标签分类

### 核心标签

![image-20221105172631802](JSP.assets/image-20221105172631802.png)

taglib prefix = "c" 必须是c

![image-20221105172655341](JSP.assets/image-20221105172655341.png)

### 格式化标签

![image-20221105172808700](JSP.assets/image-20221105172808700.png)

![image-20221105172825262](JSP.assets/image-20221105172825262.png)

### sql标签(没啥用)

![image-20221105172837056](JSP.assets/image-20221105172837056.png)

### xml标签

## JSTL函数

![image-20221105172911641](JSP.assets/image-20221105172911641.png)

# **EL表达式介绍**

![image-20221105172953598](JSP.assets/image-20221105172953598.png)

![image-20221105173015038](JSP.assets/image-20221105173015038.png)

![image-20221105173132412](JSP.assets/image-20221105173132412.png)

![image-20221105173148963](JSP.assets/image-20221105173148963.png)

![image-20221105173156741](JSP.assets/image-20221105173156741.png)

使用 EL表达式取出作用域中的值

![image-20221105173327344](JSP.assets/image-20221105173327344.png)

# JSTL标签库与EL表达式的使用

![image-20221105173708901](JSP.assets/image-20221105173708901.png)

