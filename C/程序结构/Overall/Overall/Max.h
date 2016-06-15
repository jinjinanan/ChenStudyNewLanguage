//
//  Max.h
//  Overall
//
//  Created by JSB_02 on 16/5/27.
//  Copyright © 2016年 JSB_02. All rights reserved.
//

#ifndef Max_h
#define Max_h
// 防止重复引用 标准头文件结构

#include <stdio.h>
// 在函数前面加上static就使的他成为只能在所在编译单元中被使用的函数
// 在全局变量前面加上static就使的他只能在所在编译单元中被使用的全局变量

void Max(int *a, int *b);

extern int getAll;
#endif 
