//
//  NSString+Common.h
//  Dresshere
//
//  Created by ZhangPeng on 2017/12/28.
//  Copyright © 2017年 张朋. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString(Common)

- (BOOL)isValidPhone;

// 服务器时间到当前时间差，返回：xx小时前、xx天之前、xx个月之前
+ (NSString *)serverTimeToCurrentTimeDifference:(NSString *)serverTime;

// 隐藏手机号中间4位数
+ (NSString *)hindPhoneString4Char:(NSString *)phoneString;

//去掉空格和换行
+ (NSString *)removeSpacesAndLinebreaks:(NSString *)string;

// 获取字符串中某个 字符 出现的次数
- (NSInteger)countOccurencesOfString:(NSString*)searchString;

@end
