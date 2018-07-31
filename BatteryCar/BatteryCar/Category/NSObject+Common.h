//
//  NSObject+Common.h
//  Dresshere
//
//  Created by ZhangPeng on 2017/12/28.
//  Copyright © 2017年 张朋. All rights reserved.
//

#import <Foundation/Foundation.h>

@class MBProgressHUD;

@interface NSObject(Common)

+ (void)showHudTipStr:(NSString *)tipStr;
+ (MBProgressHUD *)showHud;
+ (MBProgressHUD *)showHUDQueryStr:(NSString *)titleStr;
+ (void)hideHUDQuery;


+ (NSDictionary *)entityToDictionary:(id)entity;

@end
