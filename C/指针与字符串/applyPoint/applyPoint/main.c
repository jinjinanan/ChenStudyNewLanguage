//
//  main.c
//  DataStyle
//
//  Created by JSB_02 on 16/5/24.
//  Copyright © 2016年 JSB_02. All rights reserved.
//

#include <stdio.h>

void swapWithPoint(int *pa, int *pd);
void swap(int a, int b);
void minmax(int a[], int len, int *min, int *max);
void applyPoint();
void applyPointTwo();
void applyPointThree();
int divide(int a, int b, int *result);
void applyPointFourArrayPoint();
void minmaxArrayPoint(int a[], int len, int *min, int *max);



#pragma mark- main函数
int main(int argc, const char * argv[]) {
//     指针的应用一
//    applyPoint();
//    applyPointTwo();
    
//    指针的应用二
//    applyPointThree();
    
    applyPointFourArrayPoint();
    
    return 0;
}



#pragma mark- 应用场景一
/*
    方法的参数是指针，则在方法内交换变量， 该方法外部的变量也被交换
    方法的参数是变量，则在方法内交换成功，该方法外交换不成功。方法内的变量和方法外的变量地址不一样,浅拷贝.
 */

void applyPoint(){
    int aPoint = 5;
    int bPoint = 6;
    
    int a = 5;
    int b = 6;
    // 使用指针
    swapWithPoint(&aPoint, &bPoint);
    printf("方法的参数是指针： a = %d, b = %d\n",aPoint,bPoint);
    printf("----------------------\n");
    // 直接赋值
    swap(a, b);
    printf("方法的参数是变量的地址&方法外： a = %p, b = %p\n",&a , &b);
    printf("方法的参数是变量&方法外： a = %d, b = %d\n",a,b);
}

/*
    使用参数指针带出方法结果
 */
void applyPointTwo(){
    int a[] = {1,2,4,5,6,12,24,14,34,54,23,54,23,32,};
    int min, max;
    minmax(a, sizeof(a)/sizeof(a[0]), &min, &max);
    printf("min=%d, max=%d\n", min, max);
    
}



// 交换两个变量的值
void swapWithPoint(int *pa, int *pd){
    int t = *pa;
    *pa = *pd;
    *pd = t;
}

void swap(int a, int b){
    int t = a;
    a = b;
    b = t;
    printf("方法的参数是变量的地址&方法内： a = %p, b = %p\n",&a , &b);
    printf("方法的参数是变量&方法内： a = %d, b = %d\n",a,b);
}

void minmax(int a[], int len, int *min, int *max){
    int i;
    *min = *max = a[0];
    for (i = 1; i<len; i++) {
        if (a[i]< *min) {
            *min = a[i];
        }
        if (a[i] > *max) {
            *max = a[i];
        }
    }
}



#pragma mark- 函数返回运算状态，结果通过指针返回
/*
 使用返回值返回运算是否正确运算
 使用参数指针带出方法结果
 */
void applyPointThree(){
    int a = 5;
    int b = 2;
    int c;
    if ((divide(a, b, &c))) {
        printf("%d/%d=%d\n", a, b, c);
    }
}

int divide(int a, int b, int *result){
    int ret = 1;
    if(b == 0) ret = 0;
    else{
        *result = a/b;
    }
    return ret;
}



#pragma mark- 错误：定义了指针变量，还没有指向任何变量，就开始使用



#pragma mark- 指针与数组
/*
  数组变量本身表达地址，无需用&取地址，a == &a[0]；
  但是数组的单元表达的是变量，需要用&取地址;
  []可以对数组做，也可以对指针做，p[0] <====> a[0];
  *运算符可以对指针，也可以对数组 *a <=====> a[0];
  int b[]  -----> int *const b;
 */


void applyPointFourArrayPoint(){
    int a[] = {1,2,4,5,6,12,24,14,34,54,23,54,23,32,};
    int min, max;
    printf("applyPointFourArrayPoint: a的sizeof:%lu\n", sizeof(a));
    printf("applyPointFourArrayPoint: a的地址:%p\n",a);// 数组变量本身表达地址，无需用&取地址，a == &a[0]；
                                                      // 但是数组的单元表达的是变量，需要用&取地址;
                                                      // []可以对数组做，也可以对指针做，p[0] <====> a[0];
                                                      // *运算符可以对指针，也可以对数组 *a <=====> a[0];
                                                      // int b[]  -----> int *const b;
    
    minmaxArrayPoint(a, sizeof(a)/sizeof(a[0]), &min, &max);
    
    int *p = &min;
    printf("applyPointFourArrayPoint: p = %d \n",*p);
    printf("applyPointFourArrayPoint: p[0] = %d \n",p[0]);
    
    printf("applyPointFourArrayPoint: *a = %d \n",*a);
    printf("applyPointFourArrayPoint: a[0] = %d \n",a[0]);
    
}

void minmaxArrayPoint(int a[], int len, int *min, int *max){
    
    //a[]其实是个指针
    printf("minmax: a的sizeof:%lu\n", sizeof(a));
    printf("minmaxArrayPoint: a的地址:%p\n",a);
    
    
    int i;
    *min = *max = a[0];
    for (i = 1; i<len; i++) {
        if (a[i]< *min) {
            *min = a[i];
        }
        if (a[i] > *max) {
            *max = a[i];
        }
    }
}



#pragma mark- const  C99
/*
 指针是const，不可以修改指针
 int* const q = &i; // q是const
 *q = 26   // OK
 q++    //ERROR
 
 
 const int *p = &i;
 *p = 26;   // ERROR （*p）是const  不可以通过*p修改
 i = 26;    //OK
 p = &j;   //OK
 
 const int a[] = {1,2,3,4,5,};
 数组变量已经是const的指针 这里的 const表明数组的每个单元都是const int
 所以必须通过初始化进行赋值
 */

















