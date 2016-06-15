//
//  main.c
//  PointCalculate
//
//  Created by JSB_02 on 16/5/24.
//  Copyright © 2016年 JSB_02. All rights reserved.
//


/*
    指针可以用来做什么
    需要传入较大的数据时用作参数
    传入数组后对数组做操作
    函数返回不止一个结果
        需要用函数来修改不知一个变量
    动态申请内存
 */

#include <stdio.h>
#include <stdlib.h>
void dynamicMalloc();
void dynamicMallocOne();

int main(int argc, const char * argv[]) {
//    char ac[] = {0,1,2,3,4,5,6,7,8,9,};
//    char *p = ac;
//    printf("p = %p\n", p);
//    printf("p = %p\n", p+1);
//    printf("p = %d\n", *(p+1));
//    
//    
//    int ai[] = {0,1,2,3,4,5,6,7,8,9,};
//    int *q = ai;
//    printf("q = %p\n", q);
//    printf("q = %p\n", q+1);
    
    //动态分配内存
//    dynamicMalloc();
    
    dynamicMallocOne();
    return 0;
}

#pragma mark- O
/*
    指针不能赋0值
    一般使用NULL
 */


#pragma mark- 指针类型
/*
 无论指向什么类型，所有的指针的大小都是一样的，因为都是地址
 指向不同类型的指针是不能直接互相赋值的
 */

#pragma mark- 指针类型转换
/*
 void* 表示不知道指向什么东西的指针
 指针也可以转换类型
 
 */

#pragma mark - 动态分配内存
void dynamicMalloc(){
    int number;
    int *a;
    int i;
    printf("输入的数量是：");
    scanf("%d",&number);
    a = (int *)malloc(number*sizeof(int));
    for (i = 0; i<number; i++) {
        scanf("%d", &a[i]);
    }
    for (i = number-1; i >= 0; i--) {
        printf("%d\n", a[i]);
    }
    printf("a的地址:   %d\n", *a);
    printf("a++的地址: %d\n", *a++);
    printf("a的地址:   %p\n", a);
    printf("a++的地址: %p\n", a++);  // a++和++a  a++前使用a后+，++a先+后使用a
    printf("a[1]的地址: %p\n", &a[1]);
    
//    free(a);  //记住要free
              // 只能还申请来的手地址
    
}

void dynamicMallocOne(){
//    int *a = NULL;
//    int *b = NULL;
//    int *c = NULL;
//    int i = 0;
//    int d[] = {1,2,3,4,};
//    a = (int *)malloc(3*sizeof(int));
//    while (i <  3) {
//        a[i] = i;
//        i++;
////        *a++ = i;
////        i++;
//    }
////    d[-2] = 2;
//    b = (int *)malloc(4*sizeof(int));
//    c = (int *)malloc(0);
//    
//    
//    printf("a的空间: %lu\n", sizeof(a));
//    
//    printf("a的空间: %d\n", a[2]);
//    printf("b的空间: %lu\n", sizeof(b));
//    printf("c的空间: %lu\n", sizeof(c));
    
    //    free(a);  //记住要free
    // 只能还申请来的手地址
    
    
    int *p = 0;
    char *q = 0;
    char *s = 0;
    void *t = 0;
    int number = 5;
    p = (int *)malloc(number * sizeof(int));
    q = (char *)malloc(9*sizeof(char));
    s = (char *)malloc(sizeof(char));
    t = malloc(0);
    /*
     说明：内存单元的编号是以十六进制表示的，而一个内存单元是8bit，
     即一个字节；两个十六进制想减对应的十进制数即为包含的内存单位个数。
     亦即对应有多少个byte。
     如0xf--0x0，一共相隔15个字节
     
     */
    printf("sizeof(int)占用%lu个字节\n", sizeof(int));
    printf("sizeof(char)占用%lu个字节\n", sizeof(char));
    //  printf("sizeof(double)占用%lu个字节\n", sizeof(double));
    
    /* printf("sizeof(float)占用%lu个字节\n", sizeof(float)); */
    
    printf("已申请int类型内存块首地址：%p\n", p);
    printf("已申请char类型内存块首地址：%p\n", q);
    printf("已申请char类型内存块首地址：%p\n", s);
    printf("malloc(0)对应的内存块首地址：%p\n", t);
    
    printf("已申请int类型内存块最后地址：%p\n", p+4);
    
    free(p);
    free(q);
    free(s);
    free(t);
    
}













