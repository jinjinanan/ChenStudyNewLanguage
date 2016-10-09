//
//  WSBaseNavigationView.h
//  WolfStreet
//
//  Created by JSB_02 on 16/8/10.
//  Copyright © 2016年 WolfStreet. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, NavigationType){
    HaveRightButton = 0,
    NoRightButton = 1,
};

@interface WSBaseNavigationView : UIView

@property(nonatomic, strong)UIButton *leftBtn;

@property(nonatomic, strong)UILabel *centerLbl;

@property(nonatomic, strong)UIButton *rightBtn;

-(id)initWithType:(NavigationType)type withBounds:(CGRect)rect;

@end
