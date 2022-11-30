# XML概述

![image-20221029203448259](xml.assets/image-20221029203448259.png)

## xml的作用

配置文件：配置框架

传输数据：传输xm类型的字符串

## xml和html的区别

![image-20221029205040603](xml.assets/image-20221029205040603.png)

## xml的基本语法

![image-20221029205107568](xml.assets/image-20221029205107568.png)

```
<?xml version="1.0"?>  <!-- 第一行必须是文档声明 -->
<!-- 唯一的根标签 Students-->
<Students>
	<student>
		<!-- 属性值必须用单引号、双引号引用   -->
		<stuid id="001">1</stuid>
									<!-- 标签必须正确关闭 /标签名   大小写必须前后相同 -->
		<name sss='00a'>xiyangyang</name>
		<age>10</age>
	</student>
	
	<student>
		<stuid>2</stuid>
		<name>meiyangyang</name>
		<age>9</age>
	</student>
	
	<student>
		<stuid>3</stuid>
		<name>feiyangyang</name>
		<age>10</age>
	</student>
</Students>
```





## XML组成部分

### 文档声明

![image-20221029210210959](xml.assets/image-20221029210210959.png)

```
<?xml version="1.0" encoding="ISO-8859-1"?>
```

### 标签

![image-20221029210352671](xml.assets/image-20221029210352671.png)

<age.1> </age.1> 这种标签也是可以的



### 指令(了解)

![image-20221029210514363](xml.assets/image-20221029210514363.png)

### 属性

![image-20221029210630222](xml.assets/image-20221029210630222.png)

### 文本

![image-20221029210654585](xml.assets/image-20221029210654585.png)

CDATA区展示的文本不会被解析为 xml文件的代码

```
<![CDATA[ 要展示的文本  ]]>
```





# 约束

![image-20221029215927473](xml.assets/image-20221029215927473.png)

## 什么是约束

![image-20221029215944136](xml.assets/image-20221029215944136.png)



## DTD约束

![image-20221029220003399](xml.assets/image-20221029220003399.png)

文件的位置写文件的路径，一般是相对路径

例子

![image-20221029220114664](xml.assets/image-20221029220114664.png)

student.dtd文件的内容表明 

- students 是根结点，该根结点下可以放许多 student 结点
- student 结点 下能放且只能放一个name结点，一个age结点，一个sex结点，并且顺序必须是 name，age，sex
- name，age，sex 里面都是放 PCDATA,表示字符串
- student结点 有个 ID类型(ID类型表示不能重复)的 number属性，而且是必须的(#REQUIRED)

以此写一个 student.xml 文件 

```
<?xml version="1.0"?>
		<!--这里是根标签名-->
<!DOCTYPE students SYSTEM "student.dtd"> 
						<!-- 这个路径是相对路径，如果该student.xml文件和student.dtd在同一个文件夹下就这么写 -->
<students>
	<student id="001">
		<name>喜羊羊</name>
		<age>10</age>
		<sex>男</sex>
	</student>
	<student id="002">
		<name>喜羊羊</name>
		<age>10</age>
		<sex>男</sex>
	</student>
</students>
```



## Schema约束



![image-20221029221135192](xml.assets/image-20221029221135192.png)

![image-20221029223013585](xml.assets/image-20221029223013585.png)

Schema其实是用一个Schema文件去约束另一个Schema文件

Schema文件 是 xsd文件





例子：

![image-20221029221911568](xml.assets/image-20221029221911568.png)

这部分是命名空间



![image-20221029221928958](xml.assets/image-20221029221928958.png)

有一个结点 students，其类型是 studentsType

students结点内部有student，其类型是studentType，students内部的student结点个数最少0个，最大无限个(unbounded)

![image-20221029222201180](xml.assets/image-20221029222201180.png)

student结点内部还有 name age sex 结点，name是string类型，age是ageType类型，sex是sexType类型

student结点必须有number属性，其类型是numberType，并且这个属性是必须的

![image-20221029222352371](xml.assets/image-20221029222352371.png)

sexType ，值是字符串的，但是是一个枚举类型(enumeration)，其值有两种 male 和 female，非此即彼

ageType ，值是整数类型的(xsd:integer),最小值0，最大值256

![image-20221029222645203](xml.assets/image-20221029222645203.png)

numberType，其值是字符串类型，并且这个字符串要复合正则表达式 baizhan_\d[4]  bai_zhan 跟四位数字



写 student.xml 文档

```
<?xml version="1.0" ?>
<前缀:students
						版本
		xmls:xsi="http://www.w3.org/2001/XMLSchema-instance"
						        命名空间               具体路径
		xsi:schemaLocation="http://www.itbaizhan.cn/xml student.xsd"
					再写一遍命名空间
		xmls:前缀 = "http://www.itbaizhan.cn/xml">
		
		<前缀:student number="baizhan_001">
			<前缀:name>喜羊羊</前缀:name>
			<前缀:前缀:age>10</前缀:age>
			<前缀:sex>male</前缀:sex>
		</前缀:student>
</前缀:students>


```

上面， xmls:前缀，这里的前缀并非真的汉字"前缀"。

当我们对同一个 xml 文件需要引入多个 Schema 约束的时候，如果多个Schema约束标签出现了相同的，就需要添加前缀(起到命名空间的作用)，对这些相同的标签进行区分，分辨它们来自不同的Schema约束。我们需要给不同的约束添加不同的前缀



![image-20221029221911568](xml.assets/image-20221029221911568.png)

xmlns :xsd ，其中xsd 是前缀，所以所有标签前面都添加了 xsd:



xmlns:命名空间别名





# XML解析

![image-20221030081335549](xml.assets/image-20221030081335549.png)

DOM

![image-20221030081604130](xml.assets/image-20221030081604130.png)



## xml解析思想

## 常见解析器

![image-20221030081912698](xml.assets/image-20221030081912698.png)



# Jsoup解析器

## 使用方法

![image-20221030082616941](xml.assets/image-20221030082616941.png)

![image-20221030082925987](xml.assets/image-20221030082925987.png)

![image-20221030083634223](xml.assets/image-20221030083634223.png)

## 常用对象

### Jsoup

![image-20221030083950275](xml.assets/image-20221030083950275.png)

![image-20221030084526463](xml.assets/image-20221030084526463.png)

![image-20221030084711399](xml.assets/image-20221030084711399.png)

### Document

![image-20221030085100092](xml.assets/image-20221030085100092.png)

![image-20221030085601844](xml.assets/image-20221030085601844.png)

![image-20221030085842889](xml.assets/image-20221030085842889.png)

![image-20221030090155716](xml.assets/image-20221030090155716.png)

### Element

![image-20221030090245154](xml.assets/image-20221030090245154.png)

![image-20221030090630150](xml.assets/image-20221030090630150.png)



## XPath解析

![image-20221030090757149](xml.assets/image-20221030090757149.png)

![image-20221030091313230](xml.assets/image-20221030091313230.png)

![image-20221030091442430](xml.assets/image-20221030091442430.png)



# XML案例

## 使用Jsoup完成网络爬虫

![image-20221030091931774](xml.assets/image-20221030091931774.png)

![image-20221030092302358](xml.assets/image-20221030092302358.png)

![image-20221030092642773](xml.assets/image-20221030092642773.png)

![image-20221030092921927](xml.assets/image-20221030092921927.png)

![image-20221030093135537](xml.assets/image-20221030093135537.png)



## 配置爬虫程序的参数

![image-20221030093857377](xml.assets/image-20221030093857377.png)





![image-20221030094052828](xml.assets/image-20221030094052828.png)

因为每次都要编译太麻烦了，运行的是.java文件编译后的.class文件，试图修改.class文件中的内容很困难

![image-20221030094542728](xml.assets/image-20221030094542728.png)

![image-20221030094707899](xml.assets/image-20221030094707899.png)
