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

@end

@implementation BCHome_NoCarView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        /* ---------------添加模糊效果-------------- */
        // 1.创建模糊view
        UIVisualEffectView *effectView = [[UIVisualEffectView alloc] initWithEffect:[UIBlurEffect effectWithStyle:(UIBlurEffectStyleExtraLight)]];
        
        // 2.设定尺寸
        effectView.frame = CGRectMake(0, 0, frame.size.width, frame.size.height);
        
        // 3.添加到view当中
        [self addSubview:effectView];
        /*-------添加模糊子View的UIVisualEffectView-------*/
        
        // 创建出子模糊View, 注意这里和上面不一样
        UIVisualEffectView *subEffectView = [[UIVisualEffectView alloc] initWithEffect:[UIVibrancyEffect effectForBlurEffect:(UIBlurEffect *)effectView.effect]];
        subEffectView.frame = effectView.bounds;
        
        // 将子模糊view添加到effectView的contentView才能生效
        [effectView.contentView addSubview:subEffectView];
        
        
        // 再把要显示特效的控件添加到子模糊view上
        
//        if (!self.bottomView) {
//            self.bottomView = [[UIView alloc] initWithFrame:CGRectMake(18, frame.size.height - 18, frame.size.width - 18 * 2, 53.5)];
//            self.bottomView.backgroundColor = [UIColor whiteColor];
//            self.bottomView.layer.shadowOpacity = 0.1;
//            self.bottomView.layer.shadowColor = [UIColor blackColor].CGColor;
//            self.bottomView.layer.shadowRadius = 7;
//            [subEffectView addSubview:self.bottomView];
//        }
//        if (!self.contentScrollView) {
//            self.contentScrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(18, 10, frame.size.width - 18 * 2, frame.size.height - self.bottomView.top)];
//            self.contentScrollView.backgroundColor = [UIColor whiteColor];
//            [subEffectView addSubview:self.contentScrollView];
//        }
    }
    return self;
}

@end
