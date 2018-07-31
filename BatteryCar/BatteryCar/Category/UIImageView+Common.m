//
//  UIImageView+Common.m
//  Dresshere
//
//  Created by 张朋 on 2017/12/12.
//  Copyright © 2017年 张朋. All rights reserved.
//

#import "UIImageView+Common.h"

@implementation UIImageView(Common)

- (NSString *)imagePath{
     NSArray *pathcaches=NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
     NSString *cacheDirectory = [pathcaches objectAtIndex:0];
     return [cacheDirectory stringByAppendingString:@"img_default.png"];
}

- (void)dh_setImageURLString:(NSString *)imageURLString{
    NSString *tempUrl;
    if ([imageURLString containsString:@"dresshere"]) {
        tempUrl = [imageURLString stringByAppendingString:@"!middle"];
    }else{
        tempUrl = imageURLString;
    }
    tempUrl = [tempUrl stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    [self sd_setImageWithURL:[NSURL URLWithString:tempUrl] placeholderImage:[UIImage imageWithContentsOfFile:[self imagePath]]];
    self.contentMode = UIViewContentModeScaleAspectFill;
    self.clipsToBounds = YES;
}

- (void)dh_setOriginalImageURLString:(NSString *)imageURLString{
    NSString *tempUrl = imageURLString;
    tempUrl = [tempUrl stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    [self sd_setImageWithURL:[NSURL URLWithString:tempUrl] placeholderImage:[UIImage imageWithContentsOfFile:[self imagePath]]];
    self.contentMode = UIViewContentModeScaleAspectFill;
    self.clipsToBounds = YES;
}

- (void)dh_setPerfectImageURLString:(NSString *)imageURLString{
    NSString *tempUrl;
    if ([imageURLString containsString:@"dresshere"]) {
        tempUrl = [imageURLString stringByAppendingString:@"!perfect"];
    }else{
        tempUrl = imageURLString;
    }
    tempUrl = [tempUrl stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    [self sd_setImageWithURL:[NSURL URLWithString:tempUrl] placeholderImage:[UIImage imageWithContentsOfFile:[self imagePath]]];
    self.contentMode = UIViewContentModeScaleAspectFill;
    self.clipsToBounds = YES;
}

- (void)dh_setMiddleImageURLString:(NSString *)imageURLString{
    NSString *tempUrl;
    if ([imageURLString containsString:@"dresshere"]) {
        tempUrl = [imageURLString stringByAppendingString:@"!middle"];
    }else{
        tempUrl = imageURLString;
    }
    tempUrl = [tempUrl stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    [self sd_setImageWithURL:[NSURL URLWithString:tempUrl] placeholderImage:[UIImage imageWithContentsOfFile:[self imagePath]]];
    self.contentMode = UIViewContentModeScaleAspectFill;
    self.clipsToBounds = YES;
}

- (void)dh_setHighImageURLString:(NSString *)imageURLString{
    NSString *tempUrl;
    if ([imageURLString containsString:@"dresshere"]) {
        tempUrl = [imageURLString stringByAppendingString:@"!high"];
    }else{
        tempUrl = imageURLString;
    }
    tempUrl = [tempUrl stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    [self sd_setImageWithURL:[NSURL URLWithString:tempUrl] placeholderImage:[UIImage imageWithContentsOfFile:[self imagePath]]];
    self.contentMode = UIViewContentModeScaleAspectFill;
    self.clipsToBounds = YES;
}


@end
