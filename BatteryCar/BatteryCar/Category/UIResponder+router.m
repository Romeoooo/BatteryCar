//
//  UIResponder+router.m
//  WXHot
//
//  Created by ZhangPeng on 2017/9/8.
//  Copyright © 2017年 张朋. All rights reserved.
//

#import "UIResponder+router.h"

@implementation UIResponder(router)

- (void)routerEventWithName:(NSString *)eventName userInfo:(NSDictionary *)userInfo
{
    [[self nextResponder] routerEventWithName:eventName userInfo:userInfo];
}

@end
