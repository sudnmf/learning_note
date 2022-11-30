# Spring缺点分析

SpringBoot 是服务于 Spring框架的

![image-20221121125929190](SpringBoot1.assets/image-20221121125929190.png)

举例：

![image-20221121125951672](SpringBoot1.assets/image-20221121125951672.png)



![image-20221121130103861](SpringBoot1.assets/image-20221121130103861.png)

![image-20221121130138193](SpringBoot1.assets/image-20221121130138193.png)

# 什么是SpringBoot

![image-20221121130322373](SpringBoot1.assets/image-20221121130322373.png)

![image-20221121130440887](SpringBoot1.assets/image-20221121130440887.png)

# **SpringBoot核心功能**

核心功能是 **自动配置** 和 **起步依赖**

![image-20221121130553065](SpringBoot1.assets/image-20221121130553065.png)

# **通过官网搭建项目**

![image-20221121135905512](SpringBoot1.assets/image-20221121135905512.png)

start.spring.io 网址



![image-20221121140101510](SpringBoot1.assets/image-20221121140101510.png)

![image-20221121140114571](SpringBoot1.assets/image-20221121140114571.png)



![image-20221121140332048](SpringBoot1.assets/image-20221121140332048.png)

generate 生成项目

会下载

![image-20221121140404721](SpringBoot1.assets/image-20221121140404721.png)



项目结构

![image-20221121140546197](SpringBoot1.assets/image-20221121140546197.png)

把这个项目导入 IDEA

![image-20221121141030435](SpringBoot1.assets/image-20221121141030435.png)





# **通过IDEA脚手架搭建项目**

这种方式底层还是连接 SpringBoot 官网

新建项目

![image-20221121141140918](SpringBoot1.assets/image-20221121141140918.png)

选择 Spring Initializr

![image-20221121141215970](SpringBoot1.assets/image-20221121141215970.png)



这个**Server URL** 也可以写国内的阿里云的镜像

https://start.aliyun.com/

![image-20221121141431937](SpringBoot1.assets/image-20221121141431937.png)



项目的配置

![image-20221121141552002](SpringBoot1.assets/image-20221121141552002.png)

![image-20221121141818481](SpringBoot1.assets/image-20221121141818481.png)



完成后项目结构

![image-20221121141922175](SpringBoot1.assets/image-20221121141922175.png)

# **SpringBoot项目结构**

## **POM文件**

SpringBoot 有一个父项目

![image-20221122171022344](SpringBoot1.assets/image-20221122171022344.png)

![image-20221122171100641](SpringBoot1.assets/image-20221122171100641.png)



<img src="SpringBoot1.assets/image-20221122171337780.png" alt="image-20221122171337780" style="zoom:150%;" />

![image-20221122171315278](SpringBoot1.assets/image-20221122171315278.png)

![image-20221122171352941](SpringBoot1.assets/image-20221122171352941.png)

## **启动类、配置文件**

![image-20221122171544167](SpringBoot1.assets/image-20221122171544167.png)

![image-20221122171657945](SpringBoot1.assets/image-20221122171657945.png)

运行启动类能够运行spring boot 内部自带的 tomcat

启动内置 tomcat 运行项目

运行以后控制台界面

![image-20221122171911489](SpringBoot1.assets/image-20221122171911489.png)



![image-20221122171742094](SpringBoot1.assets/image-20221122171742094.png)

![image-20221122171844497](SpringBoot1.assets/image-20221122171844497.png)





设置tomcat 监听端口号 8888

端口号设置成 8888 覆盖了 端口号 设置为8080的默认情况

![image-20221122172006872](SpringBoot1.assets/image-20221122172006872.png)

控制台输出端口号改变了

![image-20221122172129142](SpringBoot1.assets/image-20221122172129142.png)





# **SpringBoot入门**

## **通过Maven搭建项目**

![image-20221122180859752](SpringBoot1.assets/image-20221122180859752.png)



通过maven 创建一个普通的 Java 项目

![image-20221122181132569](SpringBoot1.assets/image-20221122181132569.png)

直接 next



项目信息

![image-20221122181415413](SpringBoot1.assets/image-20221122181415413.png)





pom.xml 文件添加东西

1. 父工程

   ```
   <!--  父工程  -->
   <parent>
       <groupId>org.springframework.boot</groupId>
       <artifactId>spring-boot-starter-parent</artifactId>
       <version>2.7.5</version>
   </parent>
   ```

2. 起步依赖

   ```
   <!--  起步依赖 -->
   <dependencies>
       <dependency>
           <groupId>org.springframework.boot</groupId>
           <artifactId>spring-boot-starter-web</artifactId>
       </dependency>
   </dependencies>
   ```

3. 插件

   ```
    <!--    插件-->
       <build>
           <plugins>
               <plugin>
                   <groupId>org.springframework.boot</groupId>
                   <artifactId>spring-boot-maven-plugin</artifactId>
               </plugin>
           </plugins>
       </build>
   ```

![image-20221122182701825](SpringBoot1.assets/image-20221122182701825.png)



添加启动类(类名随意)



```
package com.NJUPT.springbootdemo1;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class Springbootdemo1Application {

	public static void main(String[] args) {
		SpringApplication.run(Springbootdemo1Application.class, args);
	}

}
```

![image-20221122183008613](SpringBoot1.assets/image-20221122183008613.png)





编写配置文件，配置文件的文件名是固定的 application.properties

![image-20221122183119885](SpringBoot1.assets/image-20221122183119885.png)

## **编写JAVA代码**