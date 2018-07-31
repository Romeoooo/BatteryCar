//
//  NSString+Common.m
//  Dresshere
//
//  Created by ZhangPeng on 2017/12/28.
//  Copyright © 2017年 张朋. All rights reserved.
//

#import "NSString+Common.h"

@implementation NSString(Common)

- (BOOL)isValidPhone{
    
    if (self.length > 11) {
        return NO;
    }
    NSString *MOBILE = @"^(0|86|17951)?(13[0-9]|15[012356789]|17[0135678]|18[0-9]|14[579])[0-9]{8}$";
    
    //规则说明:
    //中国大陆:开头1 3-8号段,后边跟9位数字
    //台湾:09开头后面跟8位数字
    //香港:9或6开头后面跟7位数字
    //澳门:66或68开头后面跟5位数字
//    NSString *MOBILE = @"^[1][3-9]{9}$|^([6|9]){7}$|^[0][9]{8}$|^[6]([8|6]){5}$";
    
    NSPredicate *regextestmobile = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", MOBILE];
    BOOL isMatch = [regextestmobile evaluateWithObject:self];
    return isMatch;
}

+ (NSString *)serverTimeToCurrentTimeDifference:(NSString *)serverTime{
    NSDate *date = [NSDate dateWithServerISOString:serverTime format:@"yyyy-MM-dd'T'HH:mm:ss.SSSZ"];
    NSDate *fromatDate = [NSDate dateFromString:[NSDate stringFromDate:date withFormat:@"yyyy-MM-dd HH:mm"] withFormat:@"yyyy-MM-dd HH:mm"];
    NSTimeInterval interval = -[fromatDate timeIntervalSinceNow];
    if (interval < 24 * 60 * 60) { //小于一天
        return [NSString stringWithFormat:@"%d小时前",(int)interval/(60 * 60)];
    }else if (interval >= 24 * 60 * 60 && interval < 24 * 60 * 60 * 30){ //小于一个月
        return [NSString stringWithFormat:@"%d天前",(int)interval/(24 * 60 * 60)];
    }else{ //大于一个月
        return [NSString stringWithFormat:@"%d月前",(int)interval/(24 * 60 * 60 * 30)];
    }
}

+ (NSString *)hindPhoneString4Char:(NSString *)phoneString{
    if (phoneString.length > 5) {
        NSMutableString *s = [NSMutableString stringWithString:phoneString];
        [s replaceCharactersInRange:NSMakeRange(3, 4) withString:@"****"];
        return s;
    }else{
        return phoneString;
    }
}

+ (NSString *)removeSpacesAndLinebreaks:(NSString *)string{
    NSString * retultString;
    retultString = [string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]]; //去除掉首尾的空白字符和换行字符
    retultString = [retultString stringByReplacingOccurrencesOfString:@"\r" withString:@""];
    retultString = [retultString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    return retultString;
}

- (NSInteger)countOccurencesOfString:(NSString*)searchString {
    NSInteger strCount = [self length] - [[self stringByReplacingOccurrencesOfString:searchString withString:@""] length];
    return strCount / [searchString length];
}

@end
