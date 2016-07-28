//
//  TableViewCell.m
//  aaa
//
//  Created by JSB_02 on 16/7/18.
//  Copyright © 2016年 JSB_02. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self.backgroundColor = [UIColor whiteColor];
    UILabel *testlbl = ({
        UILabel *label = [[UILabel alloc] init];
        label.frame = CGRectMake(0, 0, 100, 30);
        label.text = @"test";
        label;
    });
    [self addSubview:testlbl];
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    
}

@end
