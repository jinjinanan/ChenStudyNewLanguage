//
//  QuartzView.m
//  Quartz2DProgrammingGuide
//
//  Created by JSB_02 on 16/7/5.
//  Copyright © 2016年 JSB_02. All rights reserved.
//

#import "QuartzView.h"

@implementation QuartzView


- (void) drawInContext:(CGContextRef)context{
    
}

-(void) drawRect:(CGRect)rect{
    [self drawInContext:UIGraphicsGetCurrentContext()];
}
@end
