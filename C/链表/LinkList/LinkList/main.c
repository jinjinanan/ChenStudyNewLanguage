//
//  main.c
//  LinkList
//
//  Created by JSB_02 on 16/5/27.
//  Copyright © 2016年 JSB_02. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

typedef struct _node{
    int value;
    struct _node *next;   // 因为在第六行  Node还没有出现
}Node;

typedef struct _list{   // 使用自己定义的结构体 方便以后扩充
    Node* head;
}List;

void add(List *pList,int number);
void print(List *plist);

int main(int argc, const char * argv[]) {
    int number;
    List list;
    list.head = NULL;
    do{
        scanf("%d",&number);
        if (number != -1) {
            add(&list, number);
        }
    }while (number != -1);
    
    print(&list);
    
    
    

    return 0;
}

void add(List *pList,int number){
    Node *last = pList->head;
    // add to linked-list
    Node *p = (Node*)malloc(sizeof(Node));
    p->value = number;
    p->next = NULL;
    // find the last
    if (last) {
        while (last->next) { // 判断下一个是否为Null
            last = last->next;
        }
        // attach
        last->next = p;
    }else{
        pList->head = p;   // head 指向第一个
    }
}

//循环输出
void print(List *plist){
    Node *p;
    for (p = plist->head; p ; p= p->next){
        printf("%d\t",p->value);
    }
    printf("\n");
}