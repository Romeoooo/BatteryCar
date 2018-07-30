//
//  BCNavigationView.m
//  BatteryCar
//
//  Created by ZhangPeng on 2018/7/30.
//  Copyright © 2018年 braspring. All rights reserved.
//

#import "BCNavigationView.h"

@interface BCNavigationView()

@end

@implementation BCNavigationView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        if (!self.titleLabel) {
            self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, frame.size.height - 44, frame.size.width, 44)];
            self.titleLabel.textColor = [UIColor colorWithHexString:@"#000000"];
            self.titleLabel.font = [UIFont systemFontOfSize:18];
            [self.titleLabel setTextAlignment:NSTextAlignmentCenter];
            [self addSubview:self.titleLabel];
        }
        if (!self.backButton) {
            self.backButton = [[UIButton alloc] initWithFrame:CGRectMake(0, frame.size.height - 44, 44, 44)];
            [self.backButton setImage:[UIImage imageNamed:@"back"] forState:UIControlStateNormal];
            [self addSubview:self.backButton];
        }
        
        UIView *lineView = [[UIView alloc] initWithFrame:CGRectMake(0, frame.size.height - 1, frame.size.width, 1)];
        lineView.backgroundColor = RGBAlpha(0, 0, 0, 0.1);
        [self addSubview:lineView];
    }
    return self;
}

@end
