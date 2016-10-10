//
//  ViewController.m
//  testWebView
//
//  Created by JSB_02 on 16/10/9.
//  Copyright © 2016年 JSB_02. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIWebViewDelegate>

@property (nonatomic, strong)UIWebView *webView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    UIWebView *webView = [[UIWebView alloc] init];
//    for (UIView *view in webView.subviews) {
//        if ([view isKindOfClass:[UIView class]]) {
//            NSString *name =
//        }
//    }
    
        self.webView = [[UIWebView alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
//        self.webView.delegate = self;
        self.webView.opaque = NO;
        self.webView.backgroundColor = [UIColor clearColor];
        //添加到self.view上面
        [self.view addSubview:self.webView];
        self.view.backgroundColor = [UIColor clearColor];
        self.webView.scalesPageToFit = YES;
        self.webView.scrollView.backgroundColor = [UIColor clearColor];
        NSString *path = [[NSBundle mainBundle] bundlePath];
        NSURL *baseURL = [NSURL fileURLWithPath:path];
        NSString * htmlPath = [[NSBundle mainBundle] pathForResource:@"Test"
                                                              ofType:@"html"];
        NSString * htmlCont = [NSString stringWithContentsOfFile:htmlPath
                                                        encoding:NSUTF8StringEncoding
                                                           error:nil];
        [self.webView loadHTMLString:htmlCont baseURL:baseURL];
    
        for (UIView *subView in [self.webView subviews]) {
            if ([subView isKindOfClass:[UIScrollView class]]) {
                for (UIView *shadowView in [subView subviews]) {
                    if ([shadowView isKindOfClass:[UIImageView class]]) {
                        shadowView.hidden = YES;
                    }
                }
            }
        }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
