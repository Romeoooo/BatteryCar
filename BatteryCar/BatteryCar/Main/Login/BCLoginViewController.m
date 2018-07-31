//
//  BCLoginViewController.m
//  BatteryCar
//
//  Created by ZhangPeng on 2018/7/30.
//  Copyright © 2018年 braspring. All rights reserved.
//

#import "BCLoginViewController.h"
#import "BCLogin_View.h"

@interface BCLoginViewController ()

@end

@implementation BCLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitleLabelText:@"登录"];
    [self setBackButtonImage:[UIImage imageNamed:@"dismiss"]];
    
    BCLogin_View *loginView = [BCLogin_View shareBCLogin_View];
    loginView.frame = CGRectMake(0, self.navHeight, self.view.width, self.view.height - self.navHeight);
    [self.view addSubview:loginView];
}

- (void)backAction{
    [self dismissViewControllerAnimated:YES completion:nil];
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
