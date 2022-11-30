

# JavaScript简介

![image-20221106072701004](javascript1.assets/image-20221106072701004.png)

![image-20221106073401104](javascript1.assets/image-20221106073401104.png)

![image-20221106073725673](javascript1.assets/image-20221106073725673.png)

![ ](javascript1.assets/image-20221106073742238.png)

JavaScript由3部分组成

![image-20221106074305933](javascript1.assets/image-20221106074305933.png)

# JS输出语句

js脚本语言，直接在浏览器运行

脚本语言需要写在 script标签内 



- alert() 通过警告框的方式显示语句
- console.log()   打印日志显示到浏览器控制台
- document 表示当前这个网页，一个网页就是一个document  document.write()  就是在网页中显示语句



alert(值1,值2,...)   只会有第一个值弹出警告框

console.log(值1,值2,...)  日志语句  所有在() 内的值都会输出到控制台，并且用空格间隔

document.write(值1,值2,...)    () 内的所有值都会打印到页面不进行分隔



```
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<script>
<!--    浏览器弹出警告框-->
    alert("今天天气真不错")
    //在控制台显示日志
    console.log("你好世界")
    //document 表示当前这个网页，一个网页就是一个document
    document.write("这个世界真美好")
</script>
</body>
</html>
```



![image-20221106075058324](javascript1.assets/image-20221106075058324.png)

![image-20221106075106822](javascript1.assets/image-20221106075106822.png)

![image-20221106074811850](javascript1.assets/image-20221106074811850.png)

# JS编写位置

- 和html写在一起，html标签有且只有 head 和 body标签。script标签只能写在head标签和body标签内部

  ![image-20221106075442617](javascript1.assets/image-20221106075442617.png)

  这么写语法上不对，但是浏览器会帮我们矫正但是还是不建议

- js代码编写在外部.js文件中通过**script**标签引入

  给script标签设置属性 src ，src 表示本html文件相对于要引入的.js文件的相对路径 

  ![image-20221106075838801](javascript1.assets/image-20221106075838801.png)

  不允许script 既src引入又在 script标签中写  ，可以写多个js标签

  ![image-20221106080020573](javascript1.assets/image-20221106080020573.png)

- 可以将js标签编写在特定标签的特定属性中。

  满足某些事件再执行js代码

  ```
  <!DOCTYPE html>
  <html lang="en">
  <head>
      <meta charset="UTF-8">
      <title>Title</title>
  </head>
  <body>
  点击按钮后弹出 警告框
  <button onclick=alert("你点我干嘛")></button>
  </body>
  <!--<scipt></scipt>-->
  </html>
  ```

- 可以将js代码编写在href属性后面 前面加上 javascript:

  ```
  <!DOCTYPE html>
  <html lang="en">
  <head>
      <meta charset="UTF-8">
      <title>Title</title>
  </head>
  <body>
  点击该超链接后弹出对话框而不是跳转
  <a href=javascript:alert("你好世界")>好耶</a>
  </body>
  <!--<scipt></scipt>-->
  </html>
  ```

  

# 基本语法

单行注释 //

多行注释 /**/

- Js中每一个语句都应该以分号结尾
- JS中严格区分大小写
- JS会忽略多个空格和换行，所以可以通过空格和换行来对代码进行格式化

# 变量和字面量和常量

字面量

字面量就表示的是一个值，它所表示的意思就是它的字面意思

比如：1，2，3，‘’hello“  true ....

字面量可以在js中直接使用，但是通常不会这么做



变量

变量可以用在存储字面量，一个变量可以存储任意类型的字面量

我们一般都是通过变量去存储字面量而不是直接使用字面量

const

用来声明一个常量，常量只能进行一次赋值无法修改







声明变量，我们用let(var 已经不用了)，进行声明。

javascript是一个弱类型的语言，和python一样，编译时没有数据类型

不会写成 string s = "你好"  而是写成 let s = "你好"





```
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<script>
    let a = 100;
    a="你好世界";
    alert(a)
    alert("你好世界")
    const b = 200;
    // b= 40  无法进行修改
</script>
</body>
<!--<scipt></scipt>-->
</html>
```



# MDN的使用

网站

[MDN Web Docs (mozilla.org)](https://developer.mozilla.org/zh-CN/)

# 标识符

1. 在程序中所有的可以自主命名的内容都可以认为是标识符

   比如：变量名、函数名、类名

2. 标识符需要遵循如下规范

   - 标识符中可以含有字母、数字、_、$，但是不能以数字开头
   - 标识符不能是 JS 中的关键字和保留字

3. 标识符需要遵循驼峰命名法

   驼峰命名法：首字母小写，每个单词开头字母大写





# 基本数据类型

基本数据类型：

基本数据类型是整个js世界的基石

- 数值(number)
- 字符串(string)
- 布尔值(boolean)
- 空值(null)
- 未定义(undefined)



## typeof 内置运算符号

typeof 是一种运算符，得到数值对应的的基本数据类型



## 数据类型-字符串

数据类型(值的类型)

字符串(string)

- js中的字符串需要使用引号引起来

- 双引号或单引号都行但是不能混合使用

- 引号不能跨行使用，同类型的引号不能嵌套

- js中使用 \ 作为转义字符

  ```
  \' 表示 '
  \" 表示 "
  \n 表示 换行
  \t 表示 制表符
  \\ 表示 \
  ```



```
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<script>
    let s1 = "nihao"
    let s2 = 'nihao1'
    let s3 = 'niha"o1'
    let s4 = "niha'o1"
    let s5 = "niha\"o"
    let s6 = 'nih\nnao'
    console.log(s6)
    document.write(s6)
</script>
</body>
<!--<scipt></scipt>-->
</html>
```



![image-20221106122617143](javascript1.assets/image-20221106122617143.png)



### 模板字符串

使用反单引号`来创建模板字符串

```
let s1 = `nihao世界${a}`;
{a} a是变量
我的代码中后面那个 ` 不需要
```

特点

1. 可以换行，并保留字符串中的格式
2. 在模板字符串中可以直接嵌入变量

```
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<script>
    let a = 111;
    let s1 = `nihao世界${a};

             `
    console.log(s1);
    document.write(s1);

</script>
</body>
<!--<scipt></scipt>-->
</html>
```

![image-20221106135346425](javascript1.assets/image-20221106135346425.png)



## 数据类型-数值

在 JS 中，所有数值包含整数和浮点数(小数)都属于number类型

在JS中可以确保大部分的整数运算得到一个精确的结果

在JS中，小数运算有可能得到一个不精确的结果。所以JS中不要直接对精度要求高的运算，尤其是涉及钱的

当数值超过一定范围后，会使用Infinity来表示 Infinity 表示正无穷

NaN也是一个特殊数字，表示Not a Number 非法数字



 Infinity  和任何其他数字做运算是  Infinity 

NaN 和任何其他数字运算是 NaN

 Infinity  和 NaN 运算结果是 NaN



```
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<script>
    let n1 = 111;
    let n2 = 10.124;
    let n3 = 'str';
    let n4 = 5432145323564532546545344235466543;
    let n5 = 0.3;
    let n6 = 3546432456435676453546576434675645364;
    let n7 = Infinity;
    let n8 = Infinity + 10;
    let n9 = NaN;
    document.write(n1);
    document.write('<br>');
    document.write(n2);
    document.write('<br>');
    document.write(n3);
    document.write('<br>');
    document.write(n4);
    document.write('<br>');
    document.write(n5);
    document.write('<br>');
    document.write(n6);
    document.write('<br>');
    document.write(n7);
    document.write('<br>');
    document.write(n8);


    document.write('<br><br>');


    document.write(typeof n1)
    document.write('<br>');
    document.write(typeof  n2);
    document.write('<br>');
    document.write(typeof n3);
    document.write('<br>');
    document.write(typeof n4);
    document.write('<br>');
    document.write(typeof n5);
    document.write('<br>');
    document.write(typeof n6);
    document.write('<br>');
    document.write(typeof n7);
    document.write('<br>');
    document.write(typeof n8);
    document.write('<br>');
    document.write(typeof n9);
</script>
</body>
</html>
```

![image-20221106153534048](javascript1.assets/image-20221106153534048.png)











其他进制的数字：

- 二进制 0b 开头
- 八进制 0o 开头
- 十六进制 0x 开头







ES2020 最新标准中，提供了一个新数字类型 bigint 表示大整数。需要在数值后面加上n

大整数运算只能在大整数之间进行。

let num10 = 100n;



## 数据类型-bool和undefined和null

布尔值(boolean)

- 布尔值用来进行逻辑判断

- 布尔值只有两个

  true 真

  false 假



内置函数 typeof 

使用typeof 检查一个数值的数据类型







**null 通常用来表示一个空的对象**，一个不存在的东西。null类型只有一个值，就是null。

使用 typeof 检查一个null时，它会返回'object'



undefined 表示未定义，当我们**定义一个变量但是没有进行赋值**时它就是 undefined。undefined类型的值只有一个，就是 undefined

使用 typeof 检查一个undefined 时，会返回 'undefined'



如果希望 表示一个值是空的，要用 null表示而不是 undefined



```
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<script>
    let a1 = true
    let a2 = null
    let a3 = undefined
    document.write(a1)
    document.write('<br>');
    document.write(a2)
    document.write('<br>');
    document.write(a3)
    document.write('<br>');
    document.write(typeof a1)
    document.write('<br>');
    document.write(typeof a2)
    document.write('<br>');
    document.write(typeof a3)
    document.write('<br>');
</script>
</body>
</html>
```

![image-20221106154040288](javascript1.assets/image-20221106154040288.png)







## 变量内存分配

变量存储的并不是值本身，而不是值的地址。

值本身是不可变的.  

- 数值(number)
- 字符串(string)
- 布尔值(boolean)
- 空值(null)
- 未定义(undefined)

这五个基本数据类型都是不可变的值类型

a = a + 1  数值 10 没有改变，而是新创造出来了 数值11， 10依旧在那个位置，但是没有被任何变量引用了  

![image-20221106145214225](javascript1.assets/image-20221106145214225.png)





# 类型转换—转换成字符串

![image-20221106160017980](javascript1.assets/image-20221106160017980.png)

![image-20221106160743217](javascript1.assets/image-20221106160743217.png)







# 类型转换—转换成数值

![image-20221106161446530](javascript1.assets/image-20221106161446530.png)

![image-20221106161814851](javascript1.assets/image-20221106161814851.png)

# 类型转换—转换成bool型

![image-20221106163035274](javascript1.assets/image-20221106163035274.png)

![image-20221106163228800](javascript1.assets/image-20221106163228800.png)



# 运算符

![image-20221107194845162](javascript1.assets/image-20221107194845162.png)

# 算数运算符

![image-20221107195148677](javascript1.assets/image-20221107195148677.png)



![image-20221107195752040](javascript1.assets/image-20221107195752040.png)

![image-20221107200006942](javascript1.assets/image-20221107200006942.png)

# 拼串

![image-20221107200616518](javascript1.assets/image-20221107200616518.png)





# 一元+-运算符

![image-20221107201253846](javascript1.assets/image-20221107201253846.png)

![image-20221107201504096](javascript1.assets/image-20221107201504096.png)



# ++ -- 运算符

![image-20221107202407285](javascript1.assets/image-20221107202407285.png)

![image-20221107202347244](javascript1.assets/image-20221107202347244.png)

# 赋值运算符

![image-20221107202453934](javascript1.assets/image-20221107202453934.png)

![image-20221107202513662](javascript1.assets/image-20221107202513662.png)

# 逻辑运算符

![image-20221107202614116](javascript1.assets/image-20221107202614116.png)

![image-20221107202659494](javascript1.assets/image-20221107202659494.png)

![image-20221107202717354](javascript1.assets/image-20221107202717354.png)

![image-20221107202744035](javascript1.assets/image-20221107202744035.png)

![image-20221107202823256](javascript1.assets/image-20221107202823256.png)

# WS模板设置

![image-20221107203107824](javascript1.assets/image-20221107203107824.png)

![image-20221107203128404](javascript1.assets/image-20221107203128404.png)



创建一个模板组

![image-20221107203354375](javascript1.assets/image-20221107203354375.png)

![image-20221107203402401](javascript1.assets/image-20221107203402401.png)



![image-20221107203427344](javascript1.assets/image-20221107203427344.png)

![image-20221107203725811](javascript1.assets/image-20221107203725811.png)

输入 Abbreviation 中的值会出现 template text 中的值

我们 输入 sc 再按 tab 就会出现 <script></script>



# 关系运算符

![image-20221112204839587](javascript1.assets/image-20221112204839587.png)

![image-20221112204605792](javascript1.assets/image-20221112204605792.png)

![image-20221112204827726](javascript1.assets/image-20221112204827726.png)



![image-20221112205359355](javascript1.assets/image-20221112205359355.png)



## 相等运算符

![image-20221112210627297](javascript1.assets/image-20221112210627297.png)

![image-20221112210722905](javascript1.assets/image-20221112210722905.png)

![image-20221112210859765](javascript1.assets/image-20221112210859765.png)

![image-20221112211059736](javascript1.assets/image-20221112211059736.png)

![image-20221112211408182](javascript1.assets/image-20221112211408182.png)



# 条件运算符

![image-20221112211740461](javascript1.assets/image-20221112211740461.png)



# 运算符的优先级

![image-20221112213102910](javascript1.assets/image-20221112213102910.png)

# 可选链操作符

![image-20221112213320978](javascript1.assets/image-20221112213320978.png)





# 获取用户输入函数



![image-20221113150151490](javascript1.assets/image-20221113150151490.png)

# 代码块

![image-20221112213857323](javascript1.assets/image-20221112213857323.png)



# 流程控制语句

![image-20221112214222915](javascript1.assets/image-20221112214222915.png)





# 条件判断语句if

![image-20221112214612659](javascript1.assets/image-20221112214612659.png)

if默认只控制紧跟其后的那条语句(如果不加大括号)，我们一般都是要加大括号



if(){

![image-20221113144756936](javascript1.assets/image-20221113144756936.png)



![image-20221113144828094](javascript1.assets/image-20221113144828094.png)

![image-20221113144851559](javascript1.assets/image-20221113144851559.png)

# 条件分支语句switch

![image-20221113151738472](javascript1.assets/image-20221113151738472.png)

![image-20221113152720114](javascript1.assets/image-20221113152720114.png)

![image-20221113152603103](javascript1.assets/image-20221113152603103.png)



# 循环语句

![image-20221113153133514](javascript1.assets/image-20221113153133514.png)

# while语句

![image-20221113153339260](javascript1.assets/image-20221113153339260.png)

![image-20221113153357269](javascript1.assets/image-20221113153357269.png)

![image-20221113153512873](javascript1.assets/image-20221113153512873.png)

# dowhile循环

![image-20221113154419750](javascript1.assets/image-20221113154419750.png)

![image-20221113154542499](javascript1.assets/image-20221113154542499.png)



# for循环

![image-20221113155046642](javascript1.assets/image-20221113155046642.png)

![image-20221113155214080](javascript1.assets/image-20221113155214080.png)

# 循环嵌套

![image-20221113155541651](javascript1.assets/image-20221113155541651.png)



# break和continue

![image-20221113160806510](javascript1.assets/image-20221113160806510.png)

# 计时器函数

![image-20221113165604312](javascript1.assets/image-20221113165604312.png)

console.time()

console.timeEnd() 计时器取名 括号内可以写计时器的名字



# 对象

![image-20221113171037775](javascript1.assets/image-20221113171037775.png)

![image-20221113171304434](javascript1.assets/image-20221113171304434.png)







# 对象的属性

![image-20221113171435745](javascript1.assets/image-20221113171435745.png)

![image-20221113171626988](javascript1.assets/image-20221113171626988.png)

![image-20221113171706135](javascript1.assets/image-20221113171706135.png)



# 改对象和改变量

![image-20221113172609667](javascript1.assets/image-20221113172609667.png)

![image-20221113173248939](javascript1.assets/image-20221113173248939.png)

![image-20221113174539157](javascript1.assets/image-20221113174539157.png)

# 对象补充

![image-20221113173446440](javascript1.assets/image-20221113173446440.png)

![image-20221113173626100](javascript1.assets/image-20221113173626100.png)

不允许修改 句柄的引用的那个地址值



# 对象属性枚举

![image-20221113174026759](javascript1.assets/image-20221113174026759.png)

![image-20221113174310767](javascript1.assets/image-20221113174310767.png)

# 对象字面量

![image-20221113174818650](javascript1.assets/image-20221113174818650.png)

![image-20221113174919905](javascript1.assets/image-20221113174919905.png)

![image-20221113175010646](javascript1.assets/image-20221113175010646.png)

# 垃圾回收

![image-20221113175341674](javascript1.assets/image-20221113175341674.png)

![image-20221113175409191](javascript1.assets/image-20221113175409191.png)

![image-20221113175452708](javascript1.assets/image-20221113175452708.png)

# 函数简介

![image-20221113180130705](javascript1.assets/image-20221113180130705.png)



![image-20221113180302812](javascript1.assets/image-20221113180302812.png)

![image-20221113180312249](javascript1.assets/image-20221113180312249.png)

![image-20221113180316890](javascript1.assets/image-20221113180316890.png)

# 函数的语法和参数

![image-20221113190605766](javascript1.assets/image-20221113190605766.png)

![image-20221113191144347](javascript1.assets/image-20221113191144347.png)

![image-20221113191407315](javascript1.assets/image-20221113191407315.png)

![image-20221113191508328](javascript1.assets/image-20221113191508328.png)

![image-20221113191609827](javascript1.assets/image-20221113191609827.png)

# 函数返回值

![image-20221113191858956](javascript1.assets/image-20221113191858956.png)

![image-20221113192136641](javascript1.assets/image-20221113192136641.png)

![image-20221113192231838](javascript1.assets/image-20221113192231838.png)

![image-20221113192350329](javascript1.assets/image-20221113192350329.png)



# 函数补充

![image-20221113192932561](javascript1.assets/image-20221113192932561.png)

参数可以是任何类型的值，甚至是一个匿名函数



对参数修改会不会影响主函数中的参数

![image-20221113193510212](javascript1.assets/image-20221113193510212.png)

返回对象

![image-20221113193742563](javascript1.assets/image-20221113193742563.png)

返回一个匿名函数

![image-20221113193830843](javascript1.assets/image-20221113193830843.png)

![image-20221113193951227](javascript1.assets/image-20221113193951227.png)



调用匿名函数

![image-20221113194043323](javascript1.assets/image-20221113194043323.png)

该函数只能调用一次，这是立即执行函数，IIFE 函数

![image-20221113194231146](javascript1.assets/image-20221113194231146.png)



# 作用域

# 全局作用域

![image-20221113194759938](javascript1.assets/image-20221113194759938.png)

![image-20221113194941658](javascript1.assets/image-20221113194941658.png)

![image-20221113195029627](javascript1.assets/image-20221113195029627.png)

![image-20221113195059462](javascript1.assets/image-20221113195059462.png)

![image-20221113195237670](javascript1.assets/image-20221113195237670.png)

![image-20221113195314931](javascript1.assets/image-20221113195314931.png)

![image-20221113195324650](javascript1.assets/image-20221113195324650.png)

![image-20221113195531063](javascript1.assets/image-20221113195531063.png)

# 变量的提升

![image-20221115060443940](javascript1.assets/image-20221115060443940.png)

函数提升的同时该函数也同时被创建了，变量提升只会让这个变量被声明但是还没有进行赋值操作

![image-20221113195849177](javascript1.assets/image-20221113195849177.png)

![image-20221113200312982](javascript1.assets/image-20221113200312982.png)



直接报错

![image-20221113195930506](javascript1.assets/image-20221113195930506.png)







function开头也会被提升，是函数提升

var n2 = function(){} 是变量提升,但是此时 n2 还是undefined ，因此不能 n2() 调用函数会报错

![image-20221113200154805](javascript1.assets/image-20221113200154805.png)



# 调试

不让程序瞬间跑完。







打开浏览器开发者工具，源代码



![image-20221115061628023](javascript1.assets/image-20221115061628023.png)

作用域就是变量的作用域

监视能够监视变量

设置断点

![image-20221115061900206](javascript1.assets/image-20221115061900206.png)



我们再进行刷新

![image-20221115062124864](javascript1.assets/image-20221115062124864.png)



看一眼全局作用域

![image-20221115062117384](javascript1.assets/image-20221115062117384.png)

添加监视

![image-20221115062320167](javascript1.assets/image-20221115062320167.png)

进行调试模式下的控制

![image-20221115062405387](javascript1.assets/image-20221115062405387.png)



webstorm 内部也可以进行调试

![image-20221115063149601](javascript1.assets/image-20221115063149601.png)



# 函数作用域

![image-20221115124454634](javascript1.assets/image-20221115124454634.png)



函数作用域是小的全局作用域

![image-20221115124548944](javascript1.assets/image-20221115124548944.png)



# 作用域链

![image-20221115125850267](javascript1.assets/image-20221115125850267.png)

函数一旦定义完，其作用域就在函数体的大括号中

![image-20221115130255147](javascript1.assets/image-20221115130255147.png)







![image-20221115130352771](javascript1.assets/image-20221115130352771.png)



![image-20221115130652168](javascript1.assets/image-20221115130652168.png)

变量查找要从函数定义位置开始寻找



![image-20221115131736262](javascript1.assets/image-20221115131736262.png)



# this

![image-20221115153342468](javascript1.assets/image-20221115153342468.png)

![image-20221115153759917](javascript1.assets/image-20221115153759917.png)

我们希望让方法能够获取谁调用了这个方法(获取调用了这个方法的对象)

![image-20221115154134964](javascript1.assets/image-20221115154134964.png)

```
以函数形式调用   函数名(),这个函数被定义在全局作用域中
以方法形式调用  对象名.方法名()
```



不写this.  ，name 按照作用域找，可能找到全局作用域的同名变量。

使用this.明确调用本对象的name属性

![image-20221115154759654](javascript1.assets/image-20221115154759654.png)



# 工厂方法创建对象

![image-20221115155258631](javascript1.assets/image-20221115155258631.png)

![image-20221115155226998](javascript1.assets/image-20221115155226998.png)



# 构造函数

![image-20221115155743947](javascript1.assets/image-20221115155743947.png)

区别就是 new 的关键词使用，用到new 关键字的一定是调用了构造函数



![image-20221115160111952](javascript1.assets/image-20221115160111952.png)

![image-20221115160252345](javascript1.assets/image-20221115160252345.png)

![image-20221115160401675](javascript1.assets/image-20221115160401675.png)







![image-20221115160800816](javascript1.assets/image-20221115160800816.png)

添加方法，三个对象各有三个sayHello方法

![image-20221115160809115](javascript1.assets/image-20221115160809115.png)

![image-20221115160930606](javascript1.assets/image-20221115160930606.png)



将sayHello() 定义为全局，并且类的内部添加一个指向该方法的变量

![image-20221115161001694](javascript1.assets/image-20221115161001694.png)



我们只希望这个函数被对象调用，并且全局函数命名导致别的全局变量无法使用这个命令

![image-20221115161230709](javascript1.assets/image-20221115161230709.png)

规避用原型

# 原型



![image-20221115161417553](javascript1.assets/image-20221115161417553.png)

prototype 也是对象

![image-20221115161437097](javascript1.assets/image-20221115161437097.png)

![image-20221115161511365](javascript1.assets/image-20221115161511365.png)

![image-20221115161703630](javascript1.assets/image-20221115161703630.png)

![image-20221115161955398](javascript1.assets/image-20221115161955398.png)

![image-20221115161713169](javascript1.assets/image-20221115161713169.png)



前面双下划线表示隐含属性





![image-20221115161917946](javascript1.assets/image-20221115161917946.png)

![image-20221115161929283](javascript1.assets/image-20221115161929283.png)





![image-20221115162013151](javascript1.assets/image-20221115162013151.png)



![image-20221115162126220](javascript1.assets/image-20221115162126220.png)

![image-20221115162155912](javascript1.assets/image-20221115162155912.png)



![image-20221115162241092](javascript1.assets/image-20221115162241092.png)





![image-20221115162354600](javascript1.assets/image-20221115162354600.png)



![image-20221115162452725](javascript1.assets/image-20221115162452725.png)

![image-20221115162522170](javascript1.assets/image-20221115162522170.png)

值可以是变量也可以是函数



# 检查对象有没有某个属性

![image-20221115163248770](javascript1.assets/image-20221115163248770.png)

![image-20221115163338604](javascript1.assets/image-20221115163338604.png)



![image-20221115163447509](javascript1.assets/image-20221115163447509.png)



第一个 true ，第二个 false

![image-20221115163541847](javascript1.assets/image-20221115163541847.png)



hasOwnProperty 方法(属性)是哪里来的，我们为什么能调用？

# 原型链

![image-20221115164059340](javascript1.assets/image-20221115164059340.png)



![image-20221115164218504](javascript1.assets/image-20221115164218504.png)



![image-20221115164329728](javascript1.assets/image-20221115164329728.png)

![image-20221115173455073](javascript1.assets/image-20221115173455073.png)

true

hasOwnProperty 存在于原型的原型中

![image-20221115164409837](javascript1.assets/image-20221115164409837.png)



![image-20221115164540864](javascript1.assets/image-20221115164540864.png)

null

![image-20221115164631433](javascript1.assets/image-20221115164631433.png)





![image-20221115164702385](javascript1.assets/image-20221115164702385.png)

检查 p1 的原型链上 有没有 Person



Object 是所有对象的祖先



找变量用作用域链，找属性(对象的属性和对象的方法)用原型链



创建对象时候，独有的，在构造函数内通过this添加，公共的，在构造函数 prototype属性中添加





![image-20221115173236214](javascript1.assets/image-20221115173236214.png)

![image-20221115173559468](javascript1.assets/image-20221115173559468.png)

文档中，这种写法的叫做实例方法，要通过对象调用的方法

![image-20221115173727493](javascript1.assets/image-20221115173727493.png)



![image-20221115173801754](javascript1.assets/image-20221115173801754.png)

静态方法，直接通过 类名(构造函数)调用



# toString方法

![image-20221115174054840](javascript1.assets/image-20221115174054840.png)

![image-20221115174141595](javascript1.assets/image-20221115174141595.png)

如何让 toString 方法打印有效信息

进行toString方法重写

![image-20221115174249081](javascript1.assets/image-20221115174249081.png)

![image-20221115174529645](javascript1.assets/image-20221115174529645.png)



# js中的对象



![image-20221115175251602](javascript1.assets/image-20221115175251602.png)



# 数组

![image-20221115175733205](javascript1.assets/image-20221115175733205.png)

![image-20221115175832120](javascript1.assets/image-20221115175832120.png)

![image-20221115180211317](javascript1.assets/image-20221115180211317.png)

![image-20221115180419445](javascript1.assets/image-20221115180419445.png)

![image-20221115180451997](javascript1.assets/image-20221115180451997.png)

![image-20221115180627021](javascript1.assets/image-20221115180627021.png)

![image-20221115180949763](javascript1.assets/image-20221115180949763.png)

![image-20221115181036963](javascript1.assets/image-20221115181036963.png)





![image-20221116182947873](javascript1.assets/image-20221116182947873.png)

# 数组字面量

![image-20221115181417796](javascript1.assets/image-20221115181417796.png)

![image-20221115181604034](javascript1.assets/image-20221115181604034.png)

![image-20221115181711694](javascript1.assets/image-20221115181711694.png)

确保数组存储的是同种数据类型





# 数组遍历

![image-20221115181905230](javascript1.assets/image-20221115181905230.png)

正着和倒着

![image-20221115181929228](javascript1.assets/image-20221115181929228.png)



使用for in

![image-20221115182150350](javascript1.assets/image-20221115182150350.png)





# 数组四种方法

![image-20221115182524310](javascript1.assets/image-20221115182524310.png)

unshift ：数组看成队列，队首添加

![image-20221115182608565](javascript1.assets/image-20221115182608565.png)

shift：删除并返回队首第一个元素

![image-20221115182655304](javascript1.assets/image-20221115182655304.png)



# slice 和 splice

![image-20221115184444200](javascript1.assets/image-20221115184444200.png)

![image-20221115184556405](javascript1.assets/image-20221115184556405.png)

如果不写第二个参数，则表示一直截取到数组结束。

![image-20221115184650369](javascript1.assets/image-20221115184650369.png)





![image-20221115185004113](javascript1.assets/image-20221115185004113.png)

第三个参数以及往后就是要进行替换的元素

![image-20221115185113385](javascript1.assets/image-20221115185113385.png)



进行元素插入

![image-20221115185152157](javascript1.assets/image-20221115185152157.png)



# 浅拷贝深拷贝

![image-20221116183735794](javascript1.assets/image-20221116183735794.png)

![image-20221116184047852](javascript1.assets/image-20221116184047852.png)



深层的对象没有进行复制

只复制了数组对象本身

![image-20221116184829450](javascript1.assets/image-20221116184829450.png)



深复制通常会限制复制多少层



# forEach

![image-20221116191026748](javascript1.assets/image-20221116191026748.png)

![image-20221116191503610](javascript1.assets/image-20221116191503610.png)



![image-20221116191809646](javascript1.assets/image-20221116191809646.png)



# 数组的方法

![image-20221116192840075](javascript1.assets/image-20221116192840075.png)

arr.concat(可以有多个参数)

arr.concat(参数1,参数2,参数3,参数4...),会全部拼接成新的数组，而对每一个原数组都没有影响





indexOf函数

indexOf(你要查询的元素,从哪个索引开始查找)

![image-20221116193349959](javascript1.assets/image-20221116193349959.png)



![image-20221116193236569](javascript1.assets/image-20221116193236569.png)



![image-20221116193741476](javascript1.assets/image-20221116193741476.png)



![image-20221116194139908](javascript1.assets/image-20221116194139908.png)

![image-20221116194338097](javascript1.assets/image-20221116194338097.png)

![image-20221116194400374](javascript1.assets/image-20221116194400374.png)



![image-20221116194558460](javascript1.assets/image-20221116194558460.png)

![image-20221116194611207](javascript1.assets/image-20221116194611207.png)

# 函数的arguments参数

![image-20221116200008302](javascript1.assets/image-20221116200008302.png)



![image-20221116200224647](javascript1.assets/image-20221116200224647.png)

实参的存储和定不定义形参没有任何关系



![image-20221116200416426](javascript1.assets/image-20221116200416426.png)



# call和apply



![image-20221116201322136](javascript1.assets/image-20221116201322136.png)

![image-20221116201813733](javascript1.assets/image-20221116201813733.png)

call和 apply的作用都是指定函数中的this

这样写this是 window

其中，obj是对象，fn是该对象的方法

![image-20221116201352797](javascript1.assets/image-20221116201352797.png)



![image-20221116201426586](javascript1.assets/image-20221116201426586.png)



# 函数递归

![image-20221116202032624](javascript1.assets/image-20221116202032624.png)

注意左边标志





![image-20221116202306420](javascript1.assets/image-20221116202306420.png)





![image-20221116202214856](javascript1.assets/image-20221116202214856.png)



# 快速排序

![image-20221117202149036](javascript1.assets/image-20221117202149036.png)

第一次快速排序

![image-20221117202259285](javascript1.assets/image-20221117202259285.png)



尾递归

![image-20221117202502395](javascript1.assets/image-20221117202502395.png)



设置递归出口

![image-20221117202556680](javascript1.assets/image-20221117202556680.png)

# Math类

![image-20221117203917755](javascript1.assets/image-20221117203917755.png)

![image-20221117203934262](javascript1.assets/image-20221117203934262.png)



![image-20221117204004570](javascript1.assets/image-20221117204004570.png)

![image-20221117204054186](javascript1.assets/image-20221117204054186.png)















![image-20221117203800352](javascript1.assets/image-20221117203800352.png)

![image-20221117203819772](javascript1.assets/image-20221117203819772.png)

