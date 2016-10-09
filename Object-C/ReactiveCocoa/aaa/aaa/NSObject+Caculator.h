//
//  NSObject+Caculator.h
//  aaa
//
//  Created by JSB_02 on 16/9/3.
//  Copyright © 2016年 JSB_02. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CaculatorMaker;
@interface NSObject (Caculator)

+(int)makeCaculators:(void (^)(CaculatorMaker *make))caculatorMaker;

@end
