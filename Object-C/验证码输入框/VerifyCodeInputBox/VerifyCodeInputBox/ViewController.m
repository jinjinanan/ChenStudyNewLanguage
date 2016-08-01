//
//  ViewController.m
//  VerifyCodeInputBox
//
//  Created by JSB_02 on 16/7/28.
//  Copyright © 2016年 JSB_02. All rights reserved.
//

#import "ViewController.h"
#import "WSVerifyCodeView.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    WSVerifyCodeView *veiw = [[WSVerifyCodeView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.view addSubview:veiw];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
