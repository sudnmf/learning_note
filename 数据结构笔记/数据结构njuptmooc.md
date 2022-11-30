# 线性表顺序存储和实现

```
#include<stdio.h>
#include<stdlib.h>

typedef int ElemType;
typedef struct seqList {
	int n;    //当前顺序表存储的数据元素的个数
	int maxLength;//顺序表的最大长度
	ElemType* element;//数组
}SeqList;
/// <summary>
/// 对线性表初始化
/// </summary>
/// <param name="L">要初始化的线性表,是指针</param>
/// <param name="mSize">该线性表最大长度</param>
/// <returns></returns>
int Init(SeqList* L, int mSize) {
	L->maxLength = mSize;
	L->n = 0;
	L->element = (ElemType*)malloc(sizeof(ElemType) * mSize);
	return 1;
}
/// <summary>
/// 查找元素并返回
/// </summary>
/// <param name="L">线性表</param>
/// <param name="i">查找值的索引</param>
/// <param name="x">返回的元素，指针</param>
/// <returns></returns>
int Find(SeqList L, int i, ElemType* x) {
	if (i<0 || i>L.n - 1) {  //i的范围应该是 [0,n-1]
		return 0;
	}
	*x = L.element[i];
	return 1;
}
/// <summary>
/// 线性表插入
/// </summary>
/// <param name="L">要插入的线性表,指针</param>
/// <param name="i">插入元素的位置</param>
/// <param name="x">要插入的值</param>
/// <returns></returns>
int Insert(SeqList* L, int i, ElemType x) {
	int j;
	if (i<-1 || i>L->n - 1) { // 取值 [-1,n-1] 对应于要成为 [0,n]的索引
 		return 0
	}
	if (L->n == L->maxLength) { //满了
		return 0;
	}
				// j最小是 i+1
	for (j = L->n - 1; j > i; j--) {
		L->element[j + 1] = L->element[j];
	}
	L->element[i + 1] = x;
	L->n = L->n + 1;
	return 1;
}

/// <summary>
/// 线性表删除
/// </summary>
/// <param name="L">要删除元素的线性表,指针</param>
/// <param name="i">要删除的元素的索引</param>
/// <returns></returns>
int Delete(SeqList* L, int i) {
	int j;
	if (i<0 || i>L->n - 1) { //取值 [0,n-1],要删除元素的下标
		return 0;
	}
	if (!L->n) {//如果顺序表为空
		return 0;
	}
				//j 最大取 n-1
	for (j = i + 1; j < L->n; j++) {
		L->element[j - 1] = L->element[j];
	}
	L->n--;
	return 1;
}
/// <summary>
/// 打印线性表
/// </summary>
/// <param name="L">要输出的线性表</param>
/// <returns></returns>
int Output(SeqList* L) {
	int i;
	if (L->n == 0) {//顺序表是否为空
		return 0;
	}
	for (i = 0; i <= L->n - 1; i++) {
		printf("%d", L->element[i]);
	}
	printf("\n");
	return 1;
}
/// <summary>
/// 销毁线性表
/// </summary>
/// <param name="L">要销毁的线性表</param>
void Destory(SeqList* L) {
	L->n = 0;
	L->maxLength = 0;
	free(L->element);
}



线性表 查找 插入 删除 都是 O(n)
```





# 无表头结点的单链表的存储和实现

