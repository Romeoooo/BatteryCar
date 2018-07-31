//
//  BCHome_NoCarView.m
//  BatteryCar
//
//  Created by ZhangPeng on 2018/7/30.
//  Copyright © 2018年 braspring. All rights reserved.
//

#import "BCHome_NoCarView.h"

@interface BCHome_NoCarView()

@property (strong, nonatomic) UIView *bottomView; //底部联系客服、领车视图

@property (strong, nonatomic) UIScrollView *contentScrollView; //内容视图
@property (strong, nonatomic) UIScrollView *carsScrollView; //显示车类型
@property (strong, nonatomic) UIPageControl *pageController; //
@property (strong, nonatomic) UIView *rentProcessView; //租车流程


@end

@implementation BCHome_NoCarView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {

        CGFloat bottomSpace = 0;
        if (iPhoneX) {
            bottomSpace = 20;
        }
        if (!self.bottomView) {
            self.bottomView = [[UIView alloc] initWithFrame:CGRectMake(18, frame.size.height - 18 - 53.5 - bottomSpace, frame.size.width - 18 * 2, 53.5)];
            self.bottomView.backgroundColor = [UIColor whiteColor];
            self.bottomView.layer.shadowOpacity = 0.1;
            self.bottomView.layer.shadowColor = [UIColor blackColor].CGColor;
            self.bottomView.layer.shadowRadius = 7;
            [self addSubview:self.bottomView];
            
            self.customerButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, self.bottomView.width / 2, self.bottomView.height)];
            [self.customerButton setImage:[UIImage imageNamed:@"home_customer"] forState:UIControlStateNormal];
            [self.customerButton setTitle:@" 联系客服" forState:UIControlStateNormal];
            [self.customerButton setTitleColor:[UIColor colorWithHexString:@"#464646"] forState:UIControlStateNormal];
            self.customerButton.titleLabel.font = [UIFont systemFontOfSize:16 weight:UIFontWeightMedium];
            [self.bottomView addSubview:self.customerButton];
            
            self.carButton = [[UIButton alloc] initWithFrame:CGRectMake(self.bottomView.width/2, 0, self.bottomView.width / 2, self.bottomView.height)];
            [self.carButton setImage:[UIImage imageNamed:@"home_receive"] forState:UIControlStateNormal];
            [self.carButton setTitle:@" 立即领车" forState:UIControlStateNormal];
            [self.carButton setTitleColor:[UIColor colorWithHexString:@"#FFBA00"] forState:UIControlStateNormal];
            self.carButton.titleLabel.font = [UIFont systemFontOfSize:16 weight:UIFontWeightMedium];
            [self.bottomView addSubview:self.carButton];
            
            UIView *lineView = [[UIView alloc] initWithFrame:CGRectMake(self.bottomView.width/2, 10, 1, self.bottomView.height - 20)];
            lineView.backgroundColor = [UIColor colorWithHexString:@"#D5D5D5"];
            [self.bottomView addSubview:lineView];
        }
        if (!self.contentScrollView) {
            self.contentScrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(18, 10, frame.size.width - 18 * 2, frame.size.height - 10 - 18 - self.bottomView.height - bottomSpace)];
            self.contentScrollView.showsVerticalScrollIndicator = NO;
            self.contentScrollView.showsHorizontalScrollIndicator = NO;
            self.contentScrollView.backgroundColor = [[UIColor whiteColor] colorWithAlphaComponent:0];
            [self addSubview:self.contentScrollView];
            
            self.carsScrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.contentScrollView.width, self.contentScrollView.width * 1.08)];
            self.carsScrollView.pagingEnabled = YES;
            self.carsScrollView.backgroundColor = [UIColor whiteColor];
            [self.contentScrollView addSubview:self.carsScrollView];
            
            self.pageController = [[UIPageControl alloc] initWithFrame:CGRectMake(0, self.carsScrollView.bottom - 20, self.contentScrollView.width, 20)];
            self.pageController.numberOfPages = 3;
            self.pageController.currentPage = 0;
            self.pageController.tintColor = [UIColor colorWithHexString:@"#3C3C3C"];
            [self.contentScrollView addSubview:self.pageController];
            
            self.rentProcessView = [[UIView alloc] initWithFrame:CGRectMake(0, self.carsScrollView.bottom + 20, self.contentScrollView.width, 71)];
            self.rentProcessView.backgroundColor = [UIColor whiteColor];
            self.rentProcessView.layer.shadowOpacity = 0.1;
            self.rentProcessView.layer.shadowColor = [UIColor blackColor].CGColor;
            self.rentProcessView.layer.shadowRadius = 7;
            [self.contentScrollView addSubview:self.rentProcessView];
            
            self.contentScrollView.contentSize = CGSizeMake(self.contentScrollView.width, self.rentProcessView.bottom);
        }
    }
    return self;
}

@end
