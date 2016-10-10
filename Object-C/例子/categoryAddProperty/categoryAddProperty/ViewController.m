//
//  ViewController.m
//  categoryAddProperty
//
//  Created by JSB_02 on 16/10/9.
//  Copyright © 2016年 JSB_02. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "Person+addAttribute.h"

//适配ios10
//http://www.cnblogs.com/gfxxbk/p/5881453.html
@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Person *person = [[Person alloc] init];
    person.eat = @"fjwgoiqg";
    NSLog(@"%@", person.eat);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
