//
//  CaculatorMaker.h
//  aaa
//
//  Created by JSB_02 on 16/9/3.
//  Copyright © 2016年 JSB_02. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CaculatorMaker : NSObject

@property (nonatomic, assign) int iResult;

//加法
- (CaculatorMaker *(^)(int))add;

//减法
- (CaculatorMaker *(^)(int))sub;

//乘法
- (CaculatorMaker *(^)(int))muilt;

//除法
- (CaculatorMaker *(^)(int))divide;

@end
