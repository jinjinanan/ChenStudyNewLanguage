//
//  Person+addAttribute.m
//  categoryAddProperty
//
//  Created by JSB_02 on 16/10/9.
//  Copyright © 2016年 JSB_02. All rights reserved.
//

#import "Person+addAttribute.h"
#import <objc/runtime.h>

//https://my.oschina.net/u/2472425/blog/683057
//http://www.jianshu.com/p/3cbab68fb856



@implementation Person (addAttribute)

static NSString *str = @"fish";

-(NSString *)eat
{
    return objc_getAssociatedObject(self, &str);
}

-(void)setEat:(NSString *)eat
{
    objc_setAssociatedObject(self, &str, eat, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

@end
