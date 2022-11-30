# Maven简介

## 介绍

![image-20221030204831648](Maven笔记.assets/image-20221030204831648.png)

## 作用

maven两大作用：**一键构建** 和 **依赖管理**

### **一键构建** 

当然IDEA也可以编译

![image-20221030205243331](Maven笔记.assets/image-20221030205243331.png)

### 依赖管理

![image-20221030205348343](Maven笔记.assets/image-20221030205348343.png)

![image-20221030205417326](Maven笔记.assets/image-20221030205417326.png)

![image-20221030205431458](Maven笔记.assets/image-20221030205431458.png)

![image-20221030205454477](Maven笔记.assets/image-20221030205454477.png)

![image-20221030205508782](Maven笔记.assets/image-20221030205508782.png)

不管有多少项目，这些项目一定都只用一份jar包，jar包多次，反复导入各个项目中。



# Maven的安装

**在安装Maven前一定要安装java，因为maven是使用java开发的。**

要在环境变量中设置 javahome

下载地址：[Maven – Download Apache Maven](https://maven.apache.org/download.cgi)



## Maven文件的目录

安装好后的目录以及各目录存放的内容

![image-20221030210740104](Maven笔记.assets/image-20221030210740104.png)

![image-20221030210906061](Maven笔记.assets/image-20221030210906061.png)

文件mvn就是命令



![image-20221030210938223](Maven笔记.assets/image-20221030210938223.png)

引导文件



![image-20221030210953446](Maven笔记.assets/image-20221030210953446.png)

配置文件

logging是 日志文件 settings 是 核心配置文件



![image-20221030211047819](Maven笔记.assets/image-20221030211047819.png)

本身依赖用到的jar包

## 配置环境变量

![image-20221030211425390](Maven笔记.assets/image-20221030211425390.png)



![image-20221030211836041](Maven笔记.assets/image-20221030211836041.png)

![image-20221030212212332](Maven笔记.assets/image-20221030212212332.png)

mvn -v 注意空格

![image-20221030212232303](Maven笔记.assets/image-20221030212232303.png)



# Maven工程的类型和结构



## Maven工程类型

Maven 有 POM JAR WAR 三种工程类型

![image-20221030212501006](Maven笔记.assets/image-20221030212501006.png)

POM工程内部没有java代码，这种工程是用于整合其他工程的。

JAR工程，普通java工程。

WAR工程，JAVA Web 工程。



## Maven工程结构

![image-20221030213055539](Maven笔记.assets/image-20221030213055539.png)

![image-20221030215802254](Maven笔记.assets/image-20221030215802254.png)

src 源代码 .java 文件

target 编译后生成的文件，class文件



项目结构

![image-20221030213318529](Maven笔记.assets/image-20221030213318529.png)

![image-20221030215842029](Maven笔记.assets/image-20221030215842029.png)

webapp 存储的是 css js html 等的前端文件

注意 这个文件存放位置都是固定的。

如果是 .java文件就放在 java文件夹下，如果是 xml 等配置文件就放在 xml文件夹下。

test 文件夹下的都是用于测试的。由分为测试用的.java文件和测试用的配置文件(比如.xml)。



# **一键构建_项目的生命周期**

![image-20221030213747100](Maven笔记.assets/image-20221030213747100.png)

![image-20221030214001421](Maven笔记.assets/image-20221030214001421.png)

maven有三套生命周期，这里关注的是 构建声明周期。

# **一键构建_Maven常用命令**

Maven依赖插件执行命令





在Maven构建项目的每一步都可以使用一句简单的命令完成，接下来学习这些命令：

![image-20221030214454902](Maven笔记.assets/image-20221030214454902.png)



如何使用 mvn 命令

![image-20221030215500499](Maven笔记.assets/image-20221030215500499.png)



在资源管理器中打开maven项目。

![image-20221030215901065](Maven笔记.assets/image-20221030215901065.png)

在当前页面调出 cmd

![image-20221030220006496](Maven笔记.assets/image-20221030220006496.png)

此时 cmd 也进入到了 maven 项目当中

执行   **mvn clean**

![image-20221030220048159](Maven笔记.assets/image-20221030220048159.png)

![image-20221030220053917](Maven笔记.assets/image-20221030220053917.png)

每次重新编译之前都需要清除之前编译完成的，防止出现冲突。

validate命令，只能完成对项目编译期间的检查。很少使用。

![image-20221030220245997](Maven笔记.assets/image-20221030220245997.png)



mvn compile 对项目进行编译

![image-20221030220331022](Maven笔记.assets/image-20221030220331022.png)

target文件夹再出现

![image-20221030220335212](Maven笔记.assets/image-20221030220335212.png)![image-20221030220814725](Maven笔记.assets/image-20221030220814725.png)

内部有 class 文件



test 命令 会编译测试文件夹中的项目。

![image-20221030221604933](Maven笔记.assets/image-20221030221604933.png)

![image-20221030221550813](Maven笔记.assets/image-20221030221550813.png)



package 会进行编译等等一系列操作之后，还会打包

打包后的结果放在 target 文件夹中 。我这里是 jar  包 ，如果是网络的项目那么就是 war 包

![image-20221030222311062](Maven笔记.assets/image-20221030222311062.png)



## mvn install本地发布 pom.xml 中的坐标

pom.xml 中有两个属性， groupId 和 artifactId 

![image-20221030222935727](Maven笔记.assets/image-20221030222935727.png)

它发布的位置是：groupId中的值 + artifactId中的值。

如果别的项目想要使用这个项目 ，那么也是通过 groupId中的值 + artifactId中的值来引入。这是项目的坐标

![image-20221030223221055](Maven笔记.assets/image-20221030223221055.png)

![image-20221030223308484](Maven笔记.assets/image-20221030223308484.png)

c盘的repository  就是maven的仓库





tomcat:7 使用 tomcat 运行项目

插件：plugins

![image-20221030223526579](Maven笔记.assets/image-20221030223526579.png)

# 依赖管理_Maven仓库类型

![image-20221031070629368](Maven笔记.assets/image-20221031070629368.png)

## 本地仓库

![image-20221031070658243](Maven笔记.assets/image-20221031070658243.png)

## 远程仓库

![image-20221031070759936](Maven笔记.assets/image-20221031070759936.png)

## 中央仓库

![image-20221031070948647](Maven笔记.assets/image-20221031070948647.png)

中央仓库服务器在**境外**

# 依赖管理_Maven配置文件

![image-20221031071106040](Maven笔记.assets/image-20221031071106040.png)

## 配置本地仓库

打开 settings.xml 配置文件

![image-20221031071217287](Maven笔记.assets/image-20221031071217287.png)

![image-20221031071304251](Maven笔记.assets/image-20221031071304251.png)

以管理员模式启动

修改方式 ，把 <localRepository>/path/to/local/repo</localRepository> 从注释中复制出来。并写成你设置的本地仓库(即文件夹)的路径

![image-20221031071638655](Maven笔记.assets/image-20221031071638655.png)

![image-20221031071812467](Maven笔记.assets/image-20221031071812467.png)

再打包发布到本地仓库来测试是否配置成功



以后依赖的下载和项目的打包上传都是这个文件夹

## 配置镜像

配置镜像语法规范是写死了

![image-20221031072251376](Maven笔记.assets/image-20221031072251376.png)

```
<mirror>
	<!--指定镜像ID-->
	<id>nexus-aliyun</id>
	<!--匹配中央仓库-->
	<mirrorOf>central</mirrorOf>
	<!--指定镜像名称-->
	<name>Nexus aliyun</name>
	<!--指定镜像路径-->
	<url>http://maven.aliyun.com/nexus/content/groups/public</url>
</mirror>	
```

![image-20221031072624832](Maven笔记.assets/image-20221031072624832.png)



## 配置JDK版本

![image-20221031072719897](Maven笔记.assets/image-20221031072719897.png)

![image-20221031072736882](Maven笔记.assets/image-20221031072736882.png)

```
<profile>
	<id>jdk11</id>
	<activation>
		<activeByDefault>true</activeByDefault>
		<jdk>11</jdk>
	</activation>
	<properties>
		<maven.compiler.source>11</maven.compiler.source>
		<maven.compiler.target>11</maven.compiler.target>
		<maven.compiler.compilerVersion>11<maven.compiler.compilerVersion>
	</properties>
</profile>
```

# **依赖管理_Idea配置Maven插件**

不要使用IDEA自带的Maven，要使用我们本地下载的Maven，版本通常更新一点

![image-20221031073731653](Maven笔记.assets/image-20221031073731653.png)

配置三个

Maven home path ：Maven的安装路径

User settings file：配置文件路径

Local repository：本地仓库路径

![image-20221031074142344](Maven笔记.assets/image-20221031074142344.png)

Maven配置文件有语法错误可以通过IDEA编译器进行检查





**注意，当前配置完了Maven插件的路径，只在当前创建的项目中生效。**

如果希望该配置还能在其他新创建的项目中生效，要打开 new project setup 再配置一遍。

![image-20221031074651273](Maven笔记.assets/image-20221031074651273.png)

![image-20221031074549297](Maven笔记.assets/image-20221031074549297.png)



# **Maven工程开发_IDEA构建Maven工程**

使用IDEA 创建 Maven工程的Web工程

使用**模板**(archetype)来构建工程

![image-20221031074851756](Maven笔记.assets/image-20221031074851756.png)

![image-20221031074859969](Maven笔记.assets/image-20221031074859969.png)

选择模板

![image-20221031074936879](Maven笔记.assets/image-20221031074936879.png)

![image-20221031074947420](Maven笔记.assets/image-20221031074947420.png)



点击next以后一定要配置坐标

![image-20221031075050562](Maven笔记.assets/image-20221031075050562.png)

GroupId 是项目组的名字，ArtifactId 是项目的名字

GroupId 通常是半个路径

Version 是 版本号

![image-20221031075201782](Maven笔记.assets/image-20221031075201782.png)

![image-20221031075333923](Maven笔记.assets/image-20221031075333923.png)



这一页基本不要变动，就是 Maven 插件的路径，之前已经配过了

![image-20221031075416056](Maven笔记.assets/image-20221031075416056.png)



## 创建完成项目后配置

创建出来的工程 并没有 resource 等一系列更多文件夹，需要我们手动添加

![image-20221031075526697](Maven笔记.assets/image-20221031075526697.png)





![image-20221031075951319](Maven笔记.assets/image-20221031075951319.png)

java 和 resources都是我们手动创建的。

我要让工程知道文件夹的作用是什么

![image-20221031080319564](Maven笔记.assets/image-20221031080319564.png)

sources root 源代码文件夹，放 .java文件

test sources root 测试源代码文件夹

resources root 配置文件夹,放.xml啥的

test resources root 测试配置文件夹

![image-20221031081140306](Maven笔记.assets/image-20221031081140306.png) 



# **Maven工程开发_pom文件配置**

![image-20221031081255658](Maven笔记.assets/image-20221031081255658.png)

![image-20221031081304357](Maven笔记.assets/image-20221031081304357.png)

![image-20221031081517392](Maven笔记.assets/image-20221031081517392.png)

groupid  如果项目上限 网址是 www.njupt.com，那么groupid 就是 com.njupt 

项目发布后，项目的坐标是 groupid + artifactid

![image-20221031082017671](Maven笔记.assets/image-20221031082017671.png)

![image-20221031082043016](Maven笔记.assets/image-20221031082043016.png)

java版本改成

![image-20221031082156828](Maven笔记.assets/image-20221031082156828.png)





![image-20221031082340114](Maven笔记.assets/image-20221031082340114.png)

dependencies 放的就是坐标

![image-20221031082703122](Maven笔记.assets/image-20221031082703122.png)

https://mvnrepository.com/

搜索 servlet ，3.0.1

![image-20221031082953932](Maven笔记.assets/image-20221031082953932.png)

搜索jsp



点击刷新

![image-20221031084225423](Maven笔记.assets/image-20221031084225423.png)

![image-20221031084253763](Maven笔记.assets/image-20221031084253763.png)

字体不变红就引入成功

![image-20221031084317781](Maven笔记.assets/image-20221031084317781.png)

![image-20221031084407731](Maven笔记.assets/image-20221031084407731.png)

插件的配置放在 plugins 中

```
<plugin>
	<groupId>org.apache.tomcat.maven</groupId>
	<artifactId>tomcat7-maven-plugin</artifactId>
	<version>2.1</version>
	<configuration>
		<port>8080</port>
		<path>/</path>
		<uriEncoding>UTF-8</uriEncoding>
		<server>tomcat7</server>
	</configuration>	
</plugin>
```



# **Maven工程开发_编写代码**





```
package com.njupt;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/demo1")
public class demo1 extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("hello.jsp").forward(req,resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }
}
```

![image-20221106203710296](Maven笔记.assets/image-20221106203710296.png)





点击 execute maven goal

![image-20221106202733826](Maven笔记.assets/image-20221106202733826.png)







maven使用 tomcat7运行项目命令

```
mvn tomcat7:run
```

![image-20221106202919246](Maven笔记.assets/image-20221106202919246.png)







在这里配置使用 maven 运行项目

![image-20221106203045431](Maven笔记.assets/image-20221106203045431.png)



![image-20221106203000230](Maven笔记.assets/image-20221106203000230.png)

![image-20221106203257766](Maven笔记.assets/image-20221106203257766.png)

![image-20221106203323042](Maven笔记.assets/image-20221106203323042.png)







# **Maven工程开发_依赖范围**

![image-20221106203903197](Maven笔记.assets/image-20221106203903197.png)

项目引入了 servlet 和 jsp 的jar包 而tomcat7 插件内部也有 这两个jar 包，造成jar包冲突。

但是我们不引入这两个jar包通不过编译。

我们希望这两个jar包编译的时候起作用，运行的时候不起作用。

我们可以设置其依赖的作用范围 scope 标签

![image-20221106204058493](Maven笔记.assets/image-20221106204058493.png)

![image-20221106204117455](Maven笔记.assets/image-20221106204117455.png)

# **Maven工程测试_测试概述**

![image-20221106204522980](Maven笔记.assets/image-20221106204522980.png)

**![image-20221106204534300](Maven笔记.assets/image-20221106204534300.png)**

![image-20221106204610659](Maven笔记.assets/image-20221106204610659.png)

# **Maven工程测试_Junit使用步骤**

![image-20221106204816828](Maven笔记.assets/image-20221106204816828.png)

![image-20221106211138442](Maven笔记.assets/image-20221106211138442.png)

![image-20221106213520179](Maven笔记.assets/image-20221106213520179.png)

![image-20221106213608701](Maven笔记.assets/image-20221106213608701.png)









# **Maven工程测试_Junit结果判定**

![image-20221106222619061](Maven笔记.assets/image-20221106222619061.png)

![image-20221106222630842](Maven笔记.assets/image-20221106222630842.png)



右键run进行方法执行

![image-20221106222641945](Maven笔记.assets/image-20221106222641945.png)



```
package com.njupt;

import org.junit.Test;

public class demo2test {
    @Test
    public void testadd(){
        demo2 d1 = new demo2();
        int m  = d1.add(10,20);
    }
    @Test
    public void testdiv(){
        demo2 d1 = new demo2();
        int m = d1.add(10,0);

    }
}
```



![image-20221106222806650](Maven笔记.assets/image-20221106222806650.png)



Assert.assertEquals(参数1,参数2);   第一个 预期结果，第二个 实际结果



![image-20221106222921144](Maven笔记.assets/image-20221106222921144.png)



![image-20221106223107290](Maven笔记.assets/image-20221106223107290.png)

断言不一致会出现异常

# **Maven工程测试_@Before、@After**

![image-20221106223156384](Maven笔记.assets/image-20221106223156384.png)

每个测试方法在执行之前和执行之后都会分别执行@Before 修饰的方法和@After修饰的方法



![image-20221106223724660](Maven笔记.assets/image-20221106223724660.png)



# **依赖冲突调解_依赖冲突的产生**

![image-20221106224010957](Maven笔记.assets/image-20221106224010957.png)

![image-20221106224134427](Maven笔记.assets/image-20221106224134427.png)

# **依赖冲突调解**

## 第一原则：**最短路径优先原则**

![image-20221106224633728](Maven笔记.assets/image-20221106224633728.png)

![image-20221106224707716](Maven笔记.assets/image-20221106224707716.png)

![image-20221106224750719](Maven笔记.assets/image-20221106224750719.png)



![image-20221106224818643](Maven笔记.assets/image-20221106224818643.png)

spring-context 比 spring-webmvc 离spring-aop近

![image-20221106224906071](Maven笔记.assets/image-20221106224906071.png)

## **第二原则：最先声明原则**

![image-20221106225018907](Maven笔记.assets/image-20221106225018907.png)

![image-20221106225150875](Maven笔记.assets/image-20221106225150875.png)

![image-20221106225202052](Maven笔记.assets/image-20221106225202052.png)

![image-20221106225211479](Maven笔记.assets/image-20221106225211479.png)



## 手动依赖冲突调解

![image-20221106225308542](Maven笔记.assets/image-20221106225308542.png)



### 指定取消一方的依赖

![image-20221106225326337](Maven笔记.assets/image-20221106225326337.png)

指定一方对冲突的包不进行传入



在 dependency 标签中使用 exclusions ，再在 exclusions标签中用 exclusion 指定什么标签不引入 

![image-20221106225433852](Maven笔记.assets/image-20221106225433852.png)



![image-20221106225535538](Maven笔记.assets/image-20221106225535538.png)

### 进行版本锁定



![image-20221106225705791](Maven笔记.assets/image-20221106225705791.png)

# **Maven聚合开发_聚合关系**

![image-20221106225844860](Maven笔记.assets/image-20221106225844860.png)

controller 进行前后端的交互

service domain dao controller 彼此之间相互使用，这些包需要放在同一个项目中。



![image-20221106230001423](Maven笔记.assets/image-20221106230001423.png)

两个项目中重复写了 dao 和 service 方法



![image-20221106230111514](Maven笔记.assets/image-20221106230111514.png)

![image-20221106230121470](Maven笔记.assets/image-20221106230121470.png)

两个项目控制层不同

 service包 是两个项目都可以用的。



![image-20221106230525487](Maven笔记.assets/image-20221106230525487.png)



# **Maven聚合开发_继承关系**

![image-20221106230654716](Maven笔记.assets/image-20221106230654716.png)

POM 类型工程是不写代码的，但会定义一些东西

![image-20221106230737533](Maven笔记.assets/image-20221106230737533.png)



多继承的写法本质上还是引入多个依赖

引入父项目，scope标签 必须写成import

![image-20221106230813224](Maven笔记.assets/image-20221106230813224.png)



# **Maven聚合案例_搭建父工程**

![image-20221107073155532](Maven笔记.assets/image-20221107073155532.png)

dao 负责数据库的交互 service 负责



![image-20221107073347593](Maven笔记.assets/image-20221107073347593.png)

不需要根据任何模板创建

![image-20221107073405865](Maven笔记.assets/image-20221107073405865.png)

不需要写代码，父工程是虚拟工程，src目录可以直接删去

![image-20221107073515545](Maven笔记.assets/image-20221107073515545.png)



pom.xml 中 写 需要的依赖和需要的插件，因为子工程能继承父工程所有的依赖和插件

```
<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="http://maven.apache.org/POM/4.0.0"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
    <modelVersion>4.0.0</modelVersion>

    <groupId>com.njupt</groupId>
    <artifactId>mvn_demo3</artifactId>
    <version>1.0-SNAPSHOT</version>

    <properties>
        <maven.compiler.source>17</maven.compiler.source>
        <maven.compiler.target>17</maven.compiler.target>
    </properties>
    <dependencies>
        <dependency>
            <groupId>junit</groupId>
            <artifactId>junit</artifactId>
            <version>4.12</version>
            <scope>test</scope>
        </dependency>
<!--        jdbc连接器-->
        <dependency>
            <groupId>mysql</groupId>
            <artifactId>mysql-connector-java</artifactId>
            <version>8.0.27</version>
        </dependency>
        <dependency>
            <groupId>javax.servlet.jsp</groupId>
            <artifactId>javax.servlet.jsp-api</artifactId>
            <version>2.2.1</version>
            <scope>provided</scope>
        </dependency>
        <dependency>
            <groupId>javax.servlet</groupId>
            <artifactId>javax.servlet-api</artifactId>
            <version>3.0.1</version>
            <scope>provided</scope>
        </dependency>
<!--        引入jstl-->
        <dependency>
            <groupId>org.apache.taglibs</groupId>
            <artifactId>taglibs-standard-spec</artifactId>
            <version>1.2.5</version>
        </dependency>
        <dependency>
            <groupId>org.apache.taglibs</groupId>
            <artifactId>taglibs-standard-impl</artifactId>
            <version>1.2.5</version>
        </dependency>

    </dependencies>
    <build>
        <plugins>
            <plugin>
                <groupId>org.apache.tomcat.maven</groupId>
                <artifactId>tomcat7-maven-plugin</artifactId>
                <version>2.1</version>
                <configuration>
                    <port>8080</port>
                    <path>/</path>
                    <uriEncoding>UTF-8</uriEncoding>
                    <server>tomcat7</server>
                    <systemProperties></systemProperties>
                </configuration>
            </plugin>
        </plugins>
    </build>
</project>
```

![image-20221107075106134](Maven笔记.assets/image-20221107075106134.png)

# **Maven聚合案例_搭建dao模块**

dao模块是和数据库交互，就是普通的java工程

![image-20221107080629707](Maven笔记.assets/image-20221107080629707.png)

![image-20221107080702728](Maven笔记.assets/image-20221107080702728.png)

不用选择任何模板

![image-20221107080809793](Maven笔记.assets/image-20221107080809793.png)



![image-20221107080849971](Maven笔记.assets/image-20221107080849971.png)



该文件pom会有父工程配置

![image-20221107080913686](Maven笔记.assets/image-20221107080913686.png)



![image-20221107081021583](Maven笔记.assets/image-20221107081021583.png)



domain 是 存放实体类的包，dao包表示dao层

![image-20221107081400052](Maven笔记.assets/image-20221107081400052.png)





![image-20221107081602136](Maven笔记.assets/image-20221107081602136.png)

![image-20221107081716216](Maven笔记.assets/image-20221107081716216.png)

Test文件夹编写相应的测试类

![image-20221107081755617](Maven笔记.assets/image-20221107081755617.png)

![image-20221107081805626](Maven笔记.assets/image-20221107081805626.png)

# **Maven聚合案例_搭建service模块**

继续构建子模块

![image-20221107082101882](Maven笔记.assets/image-20221107082101882.png)

不用任何模板



注意取名

![image-20221107082151973](Maven笔记.assets/image-20221107082151973.png)



![image-20221107082245734](Maven笔记.assets/image-20221107082245734.png)

![image-20221107082528429](Maven笔记.assets/image-20221107082528429.png)

需要在service 中 引入 dao 的依赖

![image-20221107082346181](Maven笔记.assets/image-20221107082346181.png)



编写相应测试类

![image-20221107082623989](Maven笔记.assets/image-20221107082623989.png)

# **Maven聚合案例_搭建web模块**

![image-20221107082804060](Maven笔记.assets/image-20221107082804060.png)



要选择web工程模板

![image-20221107082839100](Maven笔记.assets/image-20221107082839100.png)

![image-20221107082927128](Maven笔记.assets/image-20221107082927128.png)



这两行删去，以及已经继承自父工程的依赖都不需要再写了

![image-20221107083012194](Maven笔记.assets/image-20221107083012194.png)

![image-20221107083109015](Maven笔记.assets/image-20221107083109015.png)

引入 service层的依赖

![image-20221107083202306](Maven笔记.assets/image-20221107083202306.png)

确认该 web 工程有没有真的继承父工程

![image-20221107083303831](Maven笔记.assets/image-20221107083303831.png)



![image-20221107083451471](Maven笔记.assets/image-20221107083451471.png)



![image-20221107083646870](Maven笔记.assets/image-20221107083646870.png)

service 引入 dao  web 引入 service ，那么 web也引入了 dao

# **Maven聚合案例_运行项目**

![image-20221107083935675](Maven笔记.assets/image-20221107083935675.png)

![image-20221107084004071](Maven笔记.assets/image-20221107084004071.png)



注意 working directory 选择父工程

![image-20221107084057396](Maven笔记.assets/image-20221107084057396.png)



会打包然后互相引入

![image-20221107084146319](Maven笔记.assets/image-20221107084146319.png)



![image-20221107084346709](Maven笔记.assets/image-20221107084346709.png)



父工程 dao模块 service 模块进行发布



父模块点击install

![image-20221107084441139](Maven笔记.assets/image-20221107084441139.png)

![image-20221107084711437](Maven笔记.assets/image-20221107084711437.png)





![image-20221107084745973](Maven笔记.assets/image-20221107084745973.png)

![image-20221107084828024](Maven笔记.assets/image-20221107084828024.png)

Working directory 要选择 web模块

这次只运行了web工程

# **依赖传递失效及解决方案**

![image-20221107085031407](Maven笔记.assets/image-20221107085031407.png)

![image-20221107085312701](Maven笔记.assets/image-20221107085312701.png)

scope 一般是不改的

![image-20221107085339026](Maven笔记.assets/image-20221107085339026.png)
