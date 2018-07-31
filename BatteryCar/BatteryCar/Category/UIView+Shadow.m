//
//  UIView+Shadow.m
//  BatteryCar
//
//  Created by ZhangPeng on 2018/7/31.
//  Copyright © 2018年 braspring. All rights reserved.
//

#import "UIView+Shadow.h"

@implementation UIView(Shadow)

- (void)addShadowWithRadius:(CGFloat)shadowRadius{
    self.layer.shadowOpacity = 0.1;
    self.layer.shadowOffset = CGSizeMake(0,0.5);
    self.layer.shadowColor = [UIColor blackColor].CGColor;
    self.layer.shadowRadius = shadowRadius;
}

@end
