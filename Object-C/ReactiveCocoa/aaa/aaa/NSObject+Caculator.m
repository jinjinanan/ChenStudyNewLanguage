//
//  NSObject+Caculator.m
//  aaa
//
//  Created by JSB_02 on 16/9/3.
//  Copyright © 2016年 JSB_02. All rights reserved.
//

#import "NSObject+Caculator.h"
#import "CaculatorMaker.h"

@implementation NSObject (Caculator)

+ (int)makeCaculators:(void (^)(CaculatorMaker *))block{
    CaculatorMaker *mgr = [[CaculatorMaker alloc] init];
    block(mgr);
    return 
}

@end
