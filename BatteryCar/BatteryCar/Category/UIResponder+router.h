//
//  UIResponder+router.h
//  WXHot
//
//  Created by ZhangPeng on 2017/9/8.
//  Copyright © 2017年 张朋. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UIResponder(router)

- (void)routerEventWithName:(NSString *)eventName userInfo:(NSDictionary *)userInfo;

@end
