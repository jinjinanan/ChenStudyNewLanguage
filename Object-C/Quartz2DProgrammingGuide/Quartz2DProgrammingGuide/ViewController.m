//
//  ViewController.m
//  Quartz2DProgrammingGuide
//
//  Created by JSB_02 on 16/7/5.
//  Copyright © 2016年 JSB_02. All rights reserved.
//

#import "ViewController.h"
#import "QuartzLines.h"



@interface ViewController ()



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    QuartzLineView *lineView = [[QuartzLineView alloc]initWithFrame:self.view.frame];
    [self.view addSubview:lineView];
    NSString *str = @"wozaina";
//    weakify(str);
//    NSLog(@"%@",weak__str);
#if DEBUG
    NSLog(@"%@",str);
#endif
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end
