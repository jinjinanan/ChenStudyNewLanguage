//
//  main.c
//  StringAndFunction
//
//  Created by JSB_02 on 16/5/25.
//  Copyright © 2016年 JSB_02. All rights reserved.
//

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

/*
    char[][]
    *char[]
 */

int mylen(const char*s){
    int cnt = 0;
    int inx = 0;
    while (s[inx] != '\0') {
        cnt++;
        inx++;
    }
    return cnt;
}

int mycmp(const char *s1, const char *s2){
    int idx = 0;
    while (s1[idx] == s2[idx] && s1[idx] != '\0') {
        idx++;
    }
    return s1[idx] - s2[idx];
    
    
//    while (*s1 == *s2 && *s1 !='\0') {
//        s1++;
//        s2++;
//    }
//    return  *s1 - *s2;
}

char* mycpy(char *dst, const char* src){
    int idx = 0;
    while (src[idx]) {  // src[idx] != '\0'
        dst[idx] = src[idx];
        idx++;
    }
    dst[idx] = '\0';
    return dst;
}

int main(int argc, const char * argv[]) {
    // 测试main函数
//    int i;
//    for (i=0; i<argc; i++) {
//        printf("%d:%s\n", i, argv[i]);
//    }
    
    //长度
//    char line[] = "Hello";
//    printf("strlen = %lu\n", strlen(line));
//    printf("mylen = %d\n", mylen(line));
    
    
    //比较字符串
//    char s1[] = "abc";
//    char s2[] = "abc ";
//    printf("%d\n", mycmp(s1, s2));
    
    
    //复制字符串
//    char *dst = (char *)malloc(strlen(s1)+1);
//    strcpy(dst, s1);
//    printf("dst:%s\n",dst);
//    mycpy(dst, s1);
//    printf("mycpy:%s\n",dst);
//    free(dst);
    
    
    // 截取字符转
//    char s[] = "hello";
//    char *p = strchr(s, 'l');
//    char c = *p;
//    *p = '\0';
//    char *t = (char *)malloc(strlen(s)+1);
//    strcpy(t, s);
//    printf("%s\n",t);
//    free(t);
//    *p = c;
//    printf("%s\n",p);  // 数组变量其实是第一个元素的指针
    

    
    return 0;
}
