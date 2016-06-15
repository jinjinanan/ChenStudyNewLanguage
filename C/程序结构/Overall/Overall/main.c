//
//  main.c
//  Overall
//
//  Created by JSB_02 on 16/5/27.
//  Copyright © 2016年 JSB_02. All rights reserved.
//

#include <stdio.h>   // 编译预处理指令
#include "Max.h"
#define PI 3.1415926
#define FORMAT "aaa\n"
#define PI2 2*PI
#define PRT printf("PRT__PI:%f\n", PI); \
            printf("PRT__PI2:%f\n",PI2)   // 反斜杠可以连接连个 注意这里是%f
#define  _DEBUG //用于条件编译， 后面有其他的编译预处理指令来检查这个红是否已经被定义过了
#define cube()// 宏可以带参数


inline void thisIsInline(int *i){
    printf("inline:%d",*i);
}

int gAll = 12;

int main(int argc, const char * argv[]) {
    printf("in %s gAll=%d\n", __func__, gAll);
    
    
    // 宏的用法
    printf("FORMAT:%s\n",FORMAT);
    printf("PI2:%f\n", PI2);  // 注意这里是%f
    PRT;
    // 预定义的宏
    printf("__FILE__:%s;\n__LINE__:%d \n", __FILE__, __LINE__);
    printf("__DATE__:%s;\n__TIME__:%s \n", __DATE__, __TIME__);
    
    
    int a = 6;
    int b = 7;
    Max(&a, &b);
//    thisIsInline(&getAll);
    printf("getAll:%d\n", getAll);
    return 0;
}
