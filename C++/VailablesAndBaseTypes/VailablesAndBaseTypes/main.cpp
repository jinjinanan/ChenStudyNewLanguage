//
//  main.cpp
//  VailablesAndBaseTypes
//
//  Created by JSB_02 on 16/6/15.
//  Copyright © 2016年 JSB_02. All rights reserved.
//

#include <iostream>
#include "moretest.hpp"

/*
    main定义在花括号之外，定义在花括号之外的是全局作用越
    定义在花括号之内是块作用域
 */



int main(int argc, const char * argv[]) {
    std:: cout << "无符号类型运算" << std::endl;
    unsigned u = 10, l = 43;
    std::cout  << "\t10 - 43 = " << u - l << std::endl;
    std::cout  << "\t43 - 10 = " << l - u << std::endl;
    std::cout << "有符号类型运算：" << std::endl;
    int u1 = 10, l1 = 43;
    std::cout <<"\t10 - 43 = " << u1 - l1 << std::endl;
    std::cout <<"\t43 - 10 = " << l1 - u1 << std::endl;
    
//    int *i;
//    std::cout << i << std::endl;
    
    int *p1 = nullptr;
    int *p2 = 0;
    int *p3 = NULL;
    int i = 2, *p = &i, &r = i;
    int **pi = &p;
    
    int a = 42;
    int *pp;            //pp是一个int指针
    int *&rp = pp;      //rp是一个绑定指针的引用
    rp = &a;            //rp引用了一个指针，因此给rp赋值&a就是令指针p指向i
    *rp = 3;            //解引用rp得到a，也就是pp指向的对象，将a的值更改为3
    std::cout << a << std::endl;
    /*
     声明：是名字为程序所知，一个文件如果想使用别处定的名字则必须包含对那个名字的声明
     定义：负责创建与名字关联的实体
     */
    
    std::cout <<"extern 常量: " << constValue << std::endl;
    
    //使用using
    studyStringAndvectorAndArray();
    return 0;
}
