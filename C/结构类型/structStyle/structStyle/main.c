//
//  main.c
//  structStyle
//
//  Created by JSB_02 on 16/5/25.
//  Copyright © 2016年 JSB_02. All rights reserved.
//

#include <stdio.h>
struct point{
    int x;
    int y;
};

struct{
    int x;
    int y;
}p1,p2;

struct pointtwo{
    int x;
    int y;
}p3,p4;
/*
    结构作为函数参数
    真个结构可以作为参数的值传入函数
    知识后是在函数内新建一个结构变量，并复制调用者的结构的值
    也可以返回一个结构
 */

struct point* getStruct(struct point *p);
void output(struct point p);
void print(const struct point *p);

int main(int argc, const char * argv[]) {
//    struct point p5 = {1,2};
//    printf("%d,%d",p5.x,p5.y);
    
    
    //传入一个较大的结构体进入函数时，使用指针
    struct point tempPoint = {0,0};
//    getStruct(&tempPoint);
    output(*getStruct(&tempPoint)); // 函数直接返回指针 *运算符可以使用
//    print(getStruct(&tempPoint));
    return 0;
}

//  传入指针，返回指针
struct point* getStruct(struct point *p){
    printf("请输入x，y:\n");
    scanf("%d", &p ->x);
    scanf("%d", &p ->y);
//    printf("%d,%d\n",p->x, p->y);
    return p;
}

//  传入结构体（在函数内部为重新复制一个结构体）
void output(struct point p){
    printf("output:%d,%d\n",p.x, p.y);
}

void print(const struct point *p){
    printf("print:%d,%d\n",p->x, p->y); // p->x == (*p).x
}







