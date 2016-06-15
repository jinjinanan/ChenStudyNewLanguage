//
//  main.c
//  ResizableArray
//
//  Created by JSB_02 on 16/5/26.
//  Copyright © 2016年 JSB_02. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
typedef struct {
    int *array;
    int size;
}Array;


// 使用指针无法再函数中声明一个本地的可遍数组，他是指向其他地方的指针。而且返回结构体更加清晰。
Array array_create(int init_size){
    Array a;
    a.size = init_size;
    a.array = (int*)malloc(sizeof(int)*a.size);
    return a;
}
void array_free(Array *a){
    free(a->array);
    a->array = NULL;
    a->size = 0;
}


int array_size(const Array *a);

int* array_at(Array *a, int index);


void array_inflate(Array *a, int more_size){
    int *p = (int *)malloc(sizeof(int)*(more_size+a->size));
    int i;
    for (i = 0; i < a->size; i++) {
        p[i] = a->array[i];
    }
    free(a->array);
    a->array = p;
    a->size += more_size;
}

int main(int argc, const char * argv[]) {
    
    return 0;
}
