//
//  BCNavigationView.m
//  BatteryCar
//
//  Created by ZhangPeng on 2018/7/30.
//  Copyright © 2018年 braspring. All rights reserved.
//

#import "BCNavigationView.h"

@interface BCNavigationView()

@property (strong, nonatomic) UIButton *backButton; //返回按钮
@property (strong, nonatomic) UILabel *titleLabel; //标题

@end

@implementation BCNavigationView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}

@end
