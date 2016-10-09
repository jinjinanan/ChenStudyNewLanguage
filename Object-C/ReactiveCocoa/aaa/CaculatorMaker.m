//
//  CaculatorMaker.m
//  aaa
//
//  Created by JSB_02 on 16/9/3.
//  Copyright © 2016年 JSB_02. All rights reserved.
//

#import "CaculatorMaker.h"

@implementation CaculatorMaker

-(CaculatorMaker *(^)(int))add{
    return ^(int value){
        _iResult += value;
        return self;
    };
}



@end
