//
//  QuartzLines.m
//  Quartz2DProgrammingGuide
//
//  Created by JSB_02 on 16/7/6.
//  Copyright © 2016年 JSB_02. All rights reserved.
//

#import "QuartzLines.h"

@implementation QuartzLineView

-(id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

- (void)drawInContext:(CGContextRef)context{
    
    // Drawing lines with a white stroke color
    CGContextSetRGBStrokeColor(context, 255.0, 0, 0, 1.0);
    // Draw them with a 2.0 stroke width so they are a bit more visible.
    CGContextSetLineWidth(context, 2.0);
    
    // Draw a single line from left to right
    CGContextMoveToPoint(context, 10.0, 30.0);
    CGContextAddLineToPoint(context, 310.0, 30.0);
    CGContextStrokePath(context);
    
    // Draw a connected sequence of line segments
    CGPoint addLines[] =
    {
        CGPointMake(10.0, 90.0),
        CGPointMake(70.0, 60.0),
        CGPointMake(130.0, 90.0),
        CGPointMake(190.0, 60.0),
        CGPointMake(250.0, 90.0),
        CGPointMake(310.0, 60.0),
    };
    // Bulk call to add lines to the current path.
    // Equivalent to MoveToPoint(points[0]); for(i=1; i<count; ++i) AddLineToPoint(points[i]);
    CGContextAddLines(context, addLines, sizeof(addLines)/sizeof(addLines[0]));
    CGContextStrokePath(context);
    
    // Draw a series of line segments. Each pair of points is a segment
    CGPoint strokeSegments[] =
    {
        CGPointMake(10.0, 150.0),
        CGPointMake(70.0, 120.0),
        CGPointMake(130.0, 150.0),
        CGPointMake(190.0, 120.0),
        CGPointMake(250.0, 150.0),
        CGPointMake(310.0, 120.0),
    };
    // Bulk call to stroke a sequence of line segments.
    // Equivalent to for(i=0; i<count; i+=2) { MoveToPoint(point[i]); AddLineToPoint(point[i+1]); StrokePath(); }
    CGContextStrokeLineSegments(context, strokeSegments, sizeof(strokeSegments)/sizeof(strokeSegments[0]));
}

@end
