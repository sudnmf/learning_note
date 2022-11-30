# GoLang语言发展和应用

## Go语言历史

![image-20221101212842483](Go语言基础1.assets/image-20221101212842483.png)

![image-20221101212903939](Go语言基础1.assets/image-20221101212903939.png)

![image-20221101213020664](Go语言基础1.assets/image-20221101213020664.png)

![image-20221101213107066](Go语言基础1.assets/image-20221101213107066.png)

go语言的发明是为了避免c++的复杂。



发展

![image-20221101213243428](Go语言基础1.assets/image-20221101213243428.png)



## 优势与劣势

优势

![image-20221101213919535](Go语言基础1.assets/image-20221101213919535.png)

劣势

![image-20221101214219758](Go语言基础1.assets/image-20221101214219758.png)

## go语言用途

![image-20221101214324799](Go语言基础1.assets/image-20221101214324799.png)

![image-20221101214348658](Go语言基础1.assets/image-20221101214348658.png)

## go微服务

![image-20221101214607577](Go语言基础1.assets/image-20221101214607577.png)

## 基于go语言的应用

![image-20221101214822497](Go语言基础1.assets/image-20221101214822497.png)





## **go开发环境搭建**

![image-20221102195854686](Go语言基础1.assets/image-20221102195854686.png)

https://studygolang.com/dl

![image-20221102195954685](Go语言基础1.assets/image-20221102195954685.png)

安装路径如下

![image-20221102200122034](Go语言基础1.assets/image-20221102200122034.png)



下载完成后的目录

![image-20221102200258826](Go语言基础1.assets/image-20221102200258826.png)

### 配置环境变量(确定GoLang位置的基础上)

对于 linux 和 mac

![image-20221102200416710](Go语言基础1.assets/image-20221102200416710.png)

```
GOROOT=D:\GoLang
GoPath=D:\GoLangProject
GO111MODULE=ON
GOPROXY=https://goproxy.cn
PATH=%PATH%\bin
```



对于windows用户

![image-20221102200935205](Go语言基础1.assets/image-20221102200935205.png)

我的配置

- GOPATH环境变量要指向工程目录，配置在系统变量，用户变量的删去

  ![image-20221103201039140](Go语言基础1.assets/image-20221103201039140.png)

- 配置GOPROXY 系统变量

  ![image-20221103201102758](Go语言基础1.assets/image-20221103201102758.png)

- 配置GOROOT  系统变量

  ![image-20221103201150696](Go语言基础1.assets/image-20221103201150696.png)

  

- Path 设置Go语言的bin目录

  ![image-20221103201209645](Go语言基础1.assets/image-20221103201209645.png)

- Go111MODULE   值是 on ，不知道干什么用的，系统变量

  ![image-20221103201319425](Go语言基础1.assets/image-20221103201319425.png)



工程目录设置三个文件夹 bin：可执行程序目录，pkg：外部依赖目录，modules下载的目录都保存在这里，相当于JAVA的Maven的本地仓库，src：源代码目录，src下回新建一个个的工程，即我们写的项目。



文件夹 

GoLang安装目录

GoLangProject 存放GoLang项目

![image-20221102202940440](Go语言基础1.assets/image-20221102202940440.png)

![image-20221103201500758](Go语言基础1.assets/image-20221103201500758.png)



环境变量的含义

![image-20221102201104598](Go语言基础1.assets/image-20221102201104598.png)



cmd窗口输入 go env

![image-20221103202826921](Go语言基础1.assets/image-20221103202826921.png)



### GOMODULES依赖包查找机制

![image-20221102203050726](Go语言基础1.assets/image-20221102203050726.png)

第三方依赖包下载后放在  GOLang项目路径/pkg/mod下



查找顺序：先找你的在编写的项目里有没有，再去 GOLang项目路径/pkg/mod找，再去 GOLang安装目录/src下去找

![image-20221102203524848](Go语言基础1.assets/image-20221102203524848.png)



goroot 内的bin文件夹内部是go命令的可执行文件。





### 编辑器

![image-20221102203540815](Go语言基础1.assets/image-20221102203540815.png)



线上编辑器(网页版的，不用在计算机上配置环境变量)

![image-20221102204021507](Go语言基础1.assets/image-20221102204021507.png)



#### 使用goland





![image-20221103222249382](Go语言基础1.assets/image-20221103222249382.png)

GOPATH

![image-20221103222336703](Go语言基础1.assets/image-20221103222336703.png)

GOROOT

![image-20221103204416548](Go语言基础1.assets/image-20221103204416548.png)



打开项目的方式：选择工作目录下的src文件夹打开即可

![image-20221103222646872](Go语言基础1.assets/image-20221103222646872.png)



勾选使用 Go modules ，再设置一个环境变量GOPROXY

![image-20221103224347666](Go语言基础1.assets/image-20221103224347666.png)





## golang常用命名

![image-20221106181707927](Go语言基础1.assets/image-20221106181707927.png)

![image-20221106181946350](Go语言基础1.assets/image-20221106181946350.png)





# 第一个GO语言程序

```
package main

import "fmt"

func main() {
	fmt.Print("你好世界")
}
```



# 标识符和关键字

标识符命名方式

![image-20221103185059436](Go语言基础1.assets/image-20221103185059436.png)

![image-20221103185110073](Go语言基础1.assets/image-20221103185110073.png)



go语言关键字，关键字和保留字不能用于标识符

关键字

![image-20221103185200640](Go语言基础1.assets/image-20221103185200640.png)

保留字

![image-20221103185214857](Go语言基础1.assets/image-20221103185214857.png)



# 运算符

## 算数运算符

![image-20221103185610478](Go语言基础1.assets/image-20221103185610478.png)

## 关系运算符

![image-20221103185733599](Go语言基础1.assets/image-20221103185733599.png)



## 逻辑运算符

![image-20221103185845470](Go语言基础1.assets/image-20221103185845470.png)

&& 和 ||是短路的



## 位运算符

![image-20221103185911628](Go语言基础1.assets/image-20221103185911628.png)



补码 原码按位取反再 +1 变成补码。

![image-20221103190200012](Go语言基础1.assets/image-20221103190200012.png)

![image-20221103190618024](Go语言基础1.assets/image-20221103190618024.png)

![image-20221103190657827](Go语言基础1.assets/image-20221103190657827.png)

