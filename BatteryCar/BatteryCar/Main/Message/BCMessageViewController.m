//
//  BCMessageViewController.m
//  BatteryCar
//
//  Created by ZhangPeng on 2018/7/31.
//  Copyright © 2018年 braspring. All rights reserved.
//

#import "BCMessageViewController.h"

@interface BCMessageViewController ()

@property (strong, nonatomic) UITableView *tableView;
@property (strong, nonatomic) UIButton *deleteButton; //清空消息列表

@end

@implementation BCMessageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitleLabelText:@"通知中心"];
    
    if (!self.tableView) {
        self.tableView = [UITableView commonTableViewWithFrame:CGRectMake(0, self.navHeight, self.view.width, self.view.height - self.navHeight)];
        self.tableView.backgroundColor = [UIColor clearColor];
        [self.view insertSubview:self.tableView atIndex:0];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
