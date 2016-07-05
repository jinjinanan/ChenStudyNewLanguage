//
//  Hello.cpp
//  GettingStarted
//
//  Created by JSB_02 on 16/6/15.
//  Copyright © 2016年 JSB_02. All rights reserved.
//

#include "Hello.hpp"


/*
    ::作用域运算符
 */
void printTwoInterget(){
    std::cout << "Enter two numbers:" << std::endl;
    int v1 = 0, v2 = 0;
    std::cin >> v1 >> v2;
    std::cout << "The sum of " << v1 << " and " << v2
        << " is " << v1 + v2 << std::endl;
    return;
}