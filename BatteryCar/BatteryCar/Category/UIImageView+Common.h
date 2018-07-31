//
//  UIImageView+Common.h
//  Dresshere
//
//  Created by 张朋 on 2017/12/12.
//  Copyright © 2017年 张朋. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UIImageView(Common)

- (void)dh_setImageURLString:(NSString *)imageURLString;

- (void)dh_setOriginalImageURLString:(NSString *)imageURLString;

- (void)dh_setPerfectImageURLString:(NSString *)imageURLString;

- (void)dh_setMiddleImageURLString:(NSString *)imageURLString;

- (void)dh_setHighImageURLString:(NSString *)imageURLString;

@end
