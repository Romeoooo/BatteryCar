//
//  Constant.h
//  BatteryCar
//
//  Created by ZhangPeng on 2018/7/30.
//  Copyright © 2018年 braspring. All rights reserved.
//

#ifndef Constant_h
#define Constant_h

#define WeakSelf(weakSelf)      __weak __typeof(&*self)    weakSelf  = self;
#define iPhoneX (kScreenWidth == 375.f && kScreenHeight == 812.f ? YES : NO)

///------
/// Server
///------
//#define kHost @"http://app.dresshere.cn/"   //正式环境
//#define kHost @"http://39.108.14.79:3000/"    //测试环境

///------
/// NSLog
///------

#ifdef DEBUG
#define NSLog(...) NSLog(__VA_ARGS__)
#else
#define NSLog(...) {}
#endif

#define kLogError(error) NSLog(@"Error: %@", error)

///------
/// Window、AppDelegate
///------
#define kKeyWindow          [UIApplication sharedApplication].keyWindow
#define kAppDelegate        ((AppDelegate*)[UIApplication sharedApplication].delegate)

///------
/// Color
///------

#define RGB(r, g, b) [UIColor colorWithRed:((r) / 255.0) green:((g) / 255.0) blue:((b) / 255.0) alpha:1.0]
#define RGBAlpha(r, g, b, a) [UIColor colorWithRed:((r) / 255.0) green:((g) / 255.0) blue:((b) / 255.0) alpha:(a)]

#define HexRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
#define HexRGBAlpha(rgbValue, a) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:(a)]

///-----------
/// 第三方key
///-----------
#define kBaiDuMapKey @"mdE8HhfO5lYrPR3Fdyo60K1qpqISovha"

///-----------
/// 注册通知与发送通知
///-----------
#define addNObserver(_selector,_name) ([[NSNotificationCenter defaultCenter] addObserver:self selector:_selector name:_name object:nil])
#define removeNObserver(_name) ([[NSNotificationCenter defaultCenter] removeObserver:self name:_name object:nil])
#define postN(_name) ([[NSNotificationCenter defaultCenter] postNotificationName:_name object:nil userInfo:nil])
#define postNWithObj(_name,_obj) ([[NSNotificationCenter defaultCenter] postNotificationName:_name object:_obj userInfo:nil])
#define postNWithInfo(_name,_info) ([[NSNotificationCenter defaultCenter] postNotificationName:_name object:nil userInfo:_info])

#endif /* Constant_h */
