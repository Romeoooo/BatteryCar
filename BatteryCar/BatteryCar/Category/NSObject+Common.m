//
//  NSObject+Common.m
//  Dresshere
//
//  Created by ZhangPeng on 2017/12/28.
//  Copyright © 2017年 张朋. All rights reserved.
//

#import "NSObject+Common.h"
#import <MBProgressHUD/MBProgressHUD.h>

#define kHUDQueryViewTag 101

@implementation NSObject(Common)

+ (void)showHudTipStr:(NSString *)tipStr{
    if (tipStr && tipStr.length > 0) {
        MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:kKeyWindow animated:YES];
        hud.mode = MBProgressHUDModeText;
        hud.detailsLabel.font = [UIFont boldSystemFontOfSize:15.0];
        hud.detailsLabel.text = tipStr;
        hud.margin = 20.f;
        hud.removeFromSuperViewOnHide = YES;
        [hud hideAnimated:YES afterDelay:1.0];
    }
}

+ (MBProgressHUD *)showHud{
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:kKeyWindow animated:YES];
    hud.mode = MBProgressHUDModeIndeterminate;
    return hud;
}

+ (MBProgressHUD *)showHUDQueryStr:(NSString *)titleStr{
    titleStr = titleStr.length > 0? titleStr: @"正在获取数据...";
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:kKeyWindow animated:YES];
    hud.tag = kHUDQueryViewTag;
    hud.label.text = titleStr;
    hud.label.font = [UIFont boldSystemFontOfSize:15.0];
    hud.margin = 10.f;
    return hud;
}
+ (void)hideHUDQuery{
    [MBProgressHUD hideHUDForView:kKeyWindow animated:YES];
}

//Model 到字典
+ (NSDictionary *)entityToDictionary:(id)entity;

{
    
    NSMutableDictionary *props = [NSMutableDictionary dictionary];
    
    unsigned int outCount, i;
    
    objc_property_t *properties = class_copyPropertyList([entity class], &outCount);
    
    for (i = 0; i<outCount; i++)
        
    {
        
        objc_property_t property = properties[i];
        
        const char* char_f =property_getName(property);
        
        NSString *propertyName = [NSString stringWithUTF8String:char_f];
        
        id propertyValue = [entity valueForKey:(NSString *)propertyName];
        
        if (propertyValue) [props setObject:propertyValue forKey:propertyName];
        
    }
    
    free(properties);
    
    return props;
    
}

@end
