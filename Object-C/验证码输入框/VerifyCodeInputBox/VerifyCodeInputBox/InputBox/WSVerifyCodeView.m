//
//  WSVerifyCodeView.m
//  WolfStreet
//
//  Created by JSB_02 on 16/7/26.
//  Copyright © 2016年 WolfStreet. All rights reserved.
//

#import "WSVerifyCodeView.h"
#import "Masonry.h"

@interface WSVerifyCodeView()<UITextFieldDelegate>

@property(nonatomic, strong) UITextField *verifyCodeFristtf;

@property(nonatomic, strong) UITextField *verifyCodeSecondtf;

@property(nonatomic, strong) UITextField *verifyCodethirdtf;

@property(nonatomic, strong) UITextField *verifyCodefourthtf;

@property(nonatomic, strong) UITextField *verifyCodefifthtf;

@property(nonatomic, strong) UILabel *verifyCodeFristLbl;

@property(nonatomic, strong) UILabel *verifyCodeSecondLbl;

@property(nonatomic, strong) UILabel *verifyCodethirdLbl;

@property(nonatomic, strong) UILabel *verifyCodefourthLbl;

@property(nonatomic, strong) UILabel * verifyCodefifthLbl;

@property(nonatomic, strong) NSArray *textFiledArray;

@end

@implementation WSVerifyCodeView

-(id)init{
    self = [super init];
    if (self) {
        [self layoutView];
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self layoutView];
        
    }
    return self;
}

-(void)layoutView{
    _verifyCodeFristtf = ({
        UITextField *tf = [[UITextField alloc] init];
        tf.backgroundColor = [UIColor yellowColor];
        tf.keyboardType = UIKeyboardTypeNumberPad;
        tf.delegate = self;
        [tf becomeFirstResponder];
        tf.enabled = YES;
        tf;
    });
    
    _verifyCodeFristLbl = ({
        UILabel *view = [[UILabel alloc] init];
        [view setBackgroundColor:[UIColor greenColor]];
        view;
    });
    
    _verifyCodeSecondtf = ({
        UITextField *tf = [[UITextField alloc] init];
        tf.backgroundColor = [UIColor yellowColor];
        tf.keyboardType = UIKeyboardTypeNumberPad;
        tf.delegate = self;
        tf.enabled = NO;
        tf;
    });
    
    _verifyCodeSecondLbl = ({
        UILabel *view = [[UILabel alloc] init];
        view.backgroundColor = [UIColor blueColor];
        view;
    });
    
    _verifyCodethirdtf = ({
        UITextField *tf = [[UITextField alloc] init];
        tf.backgroundColor = [UIColor yellowColor];
        tf.keyboardType = UIKeyboardTypeNumberPad;
        tf.delegate = self;
        tf.enabled = NO;
        tf;
    });
    
    _verifyCodethirdLbl = ({
        UILabel *view = [[UILabel alloc] init];
        view.backgroundColor = [UIColor redColor];
        view;
    });
    
    _verifyCodefourthtf = ({
        UITextField *tf = [[UITextField alloc] init];
        tf.backgroundColor = [UIColor yellowColor];
        tf.keyboardType = UIKeyboardTypeNumberPad;
        tf.delegate = self;
        tf.enabled = NO;
        tf;
    });
    
    _verifyCodefourthLbl = ({
        UILabel *view = [[UILabel alloc] init];
        view.backgroundColor = [UIColor orangeColor];
        view;
    });
    
    _verifyCodefifthtf = ({
        UITextField *tf = [[UITextField alloc] init];
        tf.backgroundColor = [UIColor yellowColor];
        tf.keyboardType = UIKeyboardTypeNumberPad;
        tf.delegate = self;
        tf.enabled = NO;
        tf;
    });
    
    _verifyCodefifthLbl = ({
        UILabel *view = [[UILabel alloc] init];
        view.backgroundColor = [UIColor purpleColor];
        view;
    });
    
    [self addSubview:_verifyCodeFristtf];
    [self addSubview:_verifyCodeSecondtf];
    [self addSubview:_verifyCodethirdtf];
    [self addSubview:_verifyCodefourthtf];
    [self addSubview:_verifyCodefifthtf];
    [self addSubview:_verifyCodeFristLbl];
    [self addSubview:_verifyCodeSecondLbl];
    [self addSubview:_verifyCodethirdLbl];
    [self addSubview:_verifyCodefourthLbl];
    [self addSubview:_verifyCodefifthLbl];
    
    
    _textFiledArray = [[NSArray alloc]initWithObjects:_verifyCodeFristtf, _verifyCodeSecondtf, _verifyCodethirdtf, _verifyCodefourthtf, _verifyCodefifthtf, nil];
    
    __weak WSVerifyCodeView *weakSelf = self;
    [_verifyCodethirdtf mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(weakSelf);
        make.centerX.equalTo(weakSelf);
        make.size.mas_equalTo(CGSizeMake(30, 30));
    }];
    
    [_verifyCodeSecondtf mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(_verifyCodethirdtf.mas_left).with.offset(-10);
        make.centerY.equalTo(_verifyCodethirdtf);
        make.size.mas_equalTo(_verifyCodethirdtf);
    }];

    [_verifyCodeFristtf mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(_verifyCodeSecondtf.mas_left).with.offset(-10);
        make.centerY.equalTo(_verifyCodeSecondtf);
        make.size.mas_equalTo(_verifyCodethirdtf);
    }];

    [_verifyCodefourthtf mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(_verifyCodethirdtf.mas_right).with.offset(10);
        make.centerY.equalTo(_verifyCodethirdtf);
        make.size.mas_equalTo(_verifyCodethirdtf);
    }];
    
    [_verifyCodefifthtf mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(_verifyCodefourthtf.mas_right).with.offset(10);
        make.centerY.equalTo(_verifyCodethirdtf);
        make.size.mas_equalTo(_verifyCodethirdtf);
    }];
    
    [_verifyCodeFristLbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(_verifyCodeFristtf.mas_bottom);
        make.centerX.equalTo(_verifyCodeFristtf);
        make.size.mas_equalTo(_verifyCodeFristtf);
    }];
    
    [_verifyCodeSecondLbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(_verifyCodeSecondtf.mas_bottom);
        make.centerX.equalTo(_verifyCodeSecondtf);
        make.size.mas_equalTo(_verifyCodeFristtf);
    }];
    
    [_verifyCodethirdLbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(_verifyCodethirdtf.mas_bottom);
        make.centerX.equalTo(_verifyCodethirdtf);
        make.size.mas_equalTo(_verifyCodeFristtf);
    }];
    
    [_verifyCodefourthLbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(_verifyCodefourthtf.mas_bottom);
        make.centerX.equalTo(_verifyCodefourthtf);
        make.size.mas_equalTo(_verifyCodeFristtf);
    }];
    
    [_verifyCodefifthLbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(_verifyCodefifthtf.mas_bottom);
        make.centerX.equalTo(_verifyCodefifthtf);
        make.size.mas_equalTo(_verifyCodeFristtf);
    }];
   
}


#pragma mark- UITextFieldDelegate
-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    NSLog(@"replacement:%@",string);
    NSLog(@"length:%lu,location:%lu", (unsigned long)range.length,(unsigned long)range.location);
    if (range.length == 1 && _verifyCodeSecondtf.text.length == 0) {
        _verifyCodeFristtf.text = @"";
        _verifyCodeFristLbl.text = @"";
    }
    
    if (range.length == 0 && _verifyCodeFristtf.text.length == 0 && _verifyCodeSecondtf.text.length == 0) {
        _verifyCodeFristLbl.text = string;
    }
    
    //如果被改变的输入框是0，第一个输入框有字，第二个输入框的长度为1。
    //则让第二个输入框变为第一响应。
    //否侧。 再删除时
    //被改变的长度是一，第一个输入框的长度为1，第三个输入框为0
    //则第二个输入框被改为空，第一个输入框变为第一响应。
    if (range.length == 0 && _verifyCodeFristtf.text.length == 1 && _verifyCodeSecondtf.text.length == 0) {
        _verifyCodeSecondtf.enabled = YES;
        _verifyCodeSecondLbl.text = string;
        [_verifyCodeSecondtf becomeFirstResponder];
    }else if(range.length == 1 && _verifyCodeFristtf.text.length == 1 && _verifyCodethirdtf.text.length == 0){
        _verifyCodeSecondtf.text = @"";
        _verifyCodeSecondLbl.text = @"";
        _verifyCodeSecondtf.enabled = NO;
        [_verifyCodeFristtf becomeFirstResponder];
        return NO;
    }
    
    if (_verifyCodeSecondtf.text.length == 1 && _verifyCodethirdtf.text.length == 0) {
        _verifyCodethirdtf.enabled = YES;
        _verifyCodethirdLbl.text = string;
        [_verifyCodethirdtf becomeFirstResponder];
       
    }else if(range.length == 1 && _verifyCodeSecondtf.text.length == 1 && _verifyCodefourthtf.text.length == 0){
        _verifyCodethirdtf.text = @"";
        _verifyCodethirdLbl.text = @"";
        _verifyCodethirdtf.enabled = NO;
        [_verifyCodeSecondtf becomeFirstResponder];
        return NO;
    }

    if (_verifyCodethirdtf.text.length == 1 && _verifyCodefourthtf.text.length == 0) {
        _verifyCodefourthtf.enabled = YES;
        _verifyCodefourthLbl.text = string;
        [_verifyCodefourthtf becomeFirstResponder];
    }else if(range.length == 1 && _verifyCodethirdtf.text.length == 1 && _verifyCodefifthtf.text.length == 0){
        _verifyCodefourthtf.text = @"";
        _verifyCodefourthLbl.text = @"";
        _verifyCodefourthtf.enabled = NO;
        [_verifyCodethirdtf becomeFirstResponder];
        return NO;
    }
    
    if (_verifyCodefourthtf.text.length == 1 && _verifyCodefifthtf.text.length == 0) {
        _verifyCodefifthtf.enabled = YES;
        _verifyCodefifthLbl.text = string;
        [_verifyCodefifthtf becomeFirstResponder];
    }else if(range.length == 1 && _verifyCodefourthtf.text.length == 1){
        _verifyCodefifthtf.text = @"";
        _verifyCodefifthLbl.text = @"";
        _verifyCodefifthtf.enabled = NO;
        [_verifyCodefourthtf becomeFirstResponder];
        return NO;
    }
    
    if (range.location == 1 && _verifyCodefifthtf.text.length == 1) {
        return NO;
    }
    
    return YES;
}





@end
