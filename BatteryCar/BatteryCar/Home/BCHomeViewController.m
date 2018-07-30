//
//  BCHomeViewController.m
//  BatteryCar
//
//  Created by ZhangPeng on 2018/7/30.
//  Copyright © 2018年 braspring. All rights reserved.
//

#import "BCHomeViewController.h"
#import "BCHome_NoCarView.h"

@interface BCHomeViewController ()

@property (strong, nonatomic) BCHome_NoCarView *noCarView; //没有租车显示视图

@end

@implementation BCHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitleLabelText:@"小哥租车"];
    [self setBackButtonImage:[UIImage imageNamed:@"user_center"]];
    
    //TODO:::
    UIImageView *testView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.view.width, self.view.height)];
    testView.image = [UIImage imageNamed:@"test_map.jpg"];
    testView.contentMode = UIViewContentModeScaleAspectFill;
    [self.view insertSubview:testView atIndex:0];
    
    if (!self.noCarView) {
        self.noCarView = [[BCHome_NoCarView alloc] initWithFrame:CGRectMake(0, 0, self.view.width, self.view.height - self.navHeight)];
        [self.view insertSubview:self.noCarView atIndex:1];
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
