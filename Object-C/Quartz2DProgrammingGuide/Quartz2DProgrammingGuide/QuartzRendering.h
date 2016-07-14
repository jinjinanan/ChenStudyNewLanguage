//
//  QuartzRendering.h
//  Quartz2DProgrammingGuide
//
//  Created by JSB_02 on 16/7/5.
//  Copyright © 2016年 JSB_02. All rights reserved.
//

#import "QuartzView.h"
#import <UIKit/UIKit.h>

@interface QuartzPatternView : QuartzView

@end

typedef enum : NSInteger{
    KLinearGradient = 0,
    KRadialGradient = 1
}GradientType;

@interface QuartzGradientView : QuartzView

@end