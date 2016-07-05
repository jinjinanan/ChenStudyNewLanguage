//
//  moretest.cpp
//  VailablesAndBaseTypes
//
//  Created by JSB_02 on 16/6/20.
//  Copyright © 2016年 JSB_02. All rights reserved.
//

#include "moretest.hpp"

extern const int constValue = 1;

const double pi = 3.14;
//double *ptr = &pi;          //错误：*ptr 是一个普通的指针
const double *cptr = &pi;   //正确：cptr可以指向一个双精度常量
//*cptr = 42;                 //错误：不能给*cptr赋值. const 限制的是指针指向的对象不许被更改
double dval = 3.14;

using std::cin;
using std::endl;
using std::cout;
//void studyConstword(){
//    cptr = &dval;
//    
//    //常量指针
//    int errNumb = 0;
//    int *const curErr = &errNumb;       //curErr将一直指向errNumb
//    const double pi = 3.1415;
//    const double *const pip = &pi;      //pip是一个指向常量对象的常量指针
////    *pip = 2.72;                        //错误：pip是一个指向常量的指针
//    if (*curErr) {
//        *curErr = 1;                    //正确：把curErr所指的对象的值重置
//    }
//    
//    /*
//     constexpr:
//     */
////    constexpr int mf = 20;          //20是常量表达式
////    constexpr int limit = mf +1;    //mf + 1 是常量表达式
////    constexpr int sz = size();      //只有当size是一个constexpr函数时，才是一条正确的声明语句
//    
//    
//    /*
//     
//    */
//    typedef double wages;       //wages是double的同义词
//    typedef wages base, *p;     //base是都变了的同义词，p是double*的同义词
//    
//    
//    using SI = wages;   //SI是wages的同义词
////    auto item = val1+val2; // item初始化为val1何val2相加的类型
//    int i= 0, &r = i;
//    auto a = r; //a是一个正数（r是i的别名，而i是一个整数）
//    
//    auto &g = i;            //g是一个整型常量引用，绑定ci
////    auto &h= 42;            //错误，不能为非常亮引用绑定字面值
//    const auto &j = 42;     //正确，可以为常量引用绑定字面值
//    
//    /*
//     deltype类型只是符
//     */
////    decltype(f())sum = x; //sum的类型就是函数f的返回类型
//    const int ci = 0, &cj = ci;
////    decltype(cj)x;          //错误，z是一个引用，必须初始化
//    
////    int i = 42, *p = &i, &r = i;
//    decltype(r + 0)b;   //正确：假发的结果是int，因此b是一个int
////    decltype(*p) c;     //错误：c是
//    
//};

void studyStringAndvectorAndArray(){
    cout << "using std::cin" << endl;
}
