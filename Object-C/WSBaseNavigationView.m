//
//  WSBaseNavigationView.m
//  WolfStreet
//
//  Created by JSB_02 on 16/8/10.
//  Copyright © 2016年 WolfStreet. All rights reserved.
//

#import "WSBaseNavigationView.h"

@implementation WSBaseNavigationView

-(id)initWithType:(NavigationType)type withBounds:(CGRect)rect{
    self = [super init];
    if (self) {
        self.bounds = rect;
       
        switch (type) {
            case HaveRightButton:
                [self createHaveRightButton];
                break;
            case NoRightButton:
                [self createNoRightButton];
                break;
                
            default:
                break;
        }
    }
    return self;
}

- (void) createHaveRightButton{
    [self createLeftButtonAndCenterLbl];
    [self createRightButton];
}

- (void)createNoRightButton{
    [self createLeftButtonAndCenterLbl];
}

-(void)createLeftButtonAndCenterLbl{
    
    _leftBtn = ({
        UIButton *btn = [[UIButton alloc] init];
        
        btn.backgroundColor = [UIColor yellowColor];
        btn;
    });
    
    _centerLbl = ({
        UILabel *lbl = [[UILabel alloc] init];
        lbl.textAlignment = NSTextAlignmentCenter;
        lbl.backgroundColor = [UIColor yellowColor];
        lbl;
    });
    
    [self addSubview:_leftBtn];
    [self addSubview:_centerLbl];

    mWeakSelf
    [_centerLbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(weakSelf);
        make.centerY.equalTo(weakSelf);
        make.size.mas_equalTo(CGSizeMake(190*mScreenWidth/750, 42*mScreenHeight/1334));
    }];
    
    [_leftBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(weakSelf);
        make.left.equalTo(weakSelf.mas_left).with.offset(29*mScreenWidth/750);
        make.size.mas_equalTo(CGSizeMake(42*mScreenWidth/750, 42*mScreenWidth/750));
    }];

}

-(void)createRightButton{
    _rightBtn = ({
        UIButton *btn = [[UIButton alloc] init];
        btn.backgroundColor = [UIColor yellowColor];
        btn;
    });
    
    [self addSubview:_rightBtn];
    
    mWeakSelf
    [_rightBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(weakSelf);
        make.right.equalTo(weakSelf.mas_right).with.offset(-29*mScreenWidth/750);
        make.size.mas_equalTo(CGSizeMake(150*mScreenWidth/750, 42*mScreenWidth/750));
    }];
}






@end
