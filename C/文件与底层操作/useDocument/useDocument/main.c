//
//  main.c
//  useDocument
//
//  Created by JSB_02 on 16/5/27.
//  Copyright © 2016年 JSB_02. All rights reserved.
//

#include <stdio.h>

/*
 r  只读
 r+ 打开读写。从文件头开始
 w  只写 。如果不存在新建，如果存在则清空
 w+ 打开读写。如果不存在新建，如果存在则清空
 a  打开追加，如果不存在新建，如果存在则从文件尾开始
 ..x    只新建，如果文件存在则不能打开
 */

/*
 配置
    Unix用文本，windows用注册表
 数据
    稍微有点量的数据都可以放数据库
 媒体
    只能是二进制
 通过第三方库来读写文件，很少直接写二进制 fread，fwrite（二进制读写）
 
 fseek 
 
 */
int main(int argc, const char * argv[]) {
    printf("%s\n",__FILE__);
    FILE *fp = fopen(".\\test.rtf", "r");
    if (fp) {
        int num;
        fscanf(fp, "%d",&num);
        printf("%d\n",num);
        fclose(fp);
    }else{
        printf("无法打开文件\n");
    }
}
