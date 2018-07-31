//
//  UITableView+Common.m
//  BatteryCar
//
//  Created by ZhangPeng on 2018/7/31.
//  Copyright © 2018年 braspring. All rights reserved.
//

#import "UITableView+Common.h"

@implementation UITableView(Common)

+ (UITableView *)commonTableViewWithFrame:(CGRect)frame{
    UITableView *tableView = [[UITableView alloc] initWithFrame:frame style:UITableViewStylePlain];
    tableView.showsVerticalScrollIndicator = NO;
    tableView.showsHorizontalScrollIndicator = NO;
    [tableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    return tableView;
}

@end
