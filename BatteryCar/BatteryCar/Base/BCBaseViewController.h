//
//  BCBaseViewController.h
//  BatteryCar
//
//  Created by ZhangPeng on 2018/7/30.
//  Copyright © 2018年 braspring. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BCBaseViewController : UIViewController

@property (assign, nonatomic) CGFloat navHeight; //导航高度

- (void)setBackButtonImage:(UIImage *)image;
- (void)setTitleLabelText:(NSString *)text;
- (void)backAction;

@end
