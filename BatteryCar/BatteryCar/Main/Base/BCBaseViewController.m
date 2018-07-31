//
//  BCBaseViewController.m
//  BatteryCar
//
//  Created by ZhangPeng on 2018/7/30.
//  Copyright © 2018年 braspring. All rights reserved.
//

#import "BCBaseViewController.h"
#import "BCMessageViewController.h"

@interface BCBaseViewController ()

@property (strong, nonatomic) BCNavigationView *customNavigationView; //导航
@property (strong, nonatomic) UIButton *messageButton; //消息按钮

@end

@implementation BCBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navHeight = 64;
    if (iPhoneX) {
        self.navHeight = 84;
    }
    if (!self.customNavigationView) {
        self.customNavigationView = [[BCNavigationView alloc] initWithFrame:CGRectMake(0, 0, kScreenWidth, self.navHeight)];
        [self.customNavigationView.backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
        self.customNavigationView.layer.shadowOpacity = 0.1;
        self.customNavigationView.layer.shadowColor = [UIColor blackColor].CGColor;
        self.customNavigationView.layer.shadowRadius = 7;
        [self.view addSubview:self.customNavigationView];
    }
    
    self.view.backgroundColor = [UIColor colorWithHexString:@"#F2F2F2"];
}

- (void)addMessageButton{
    if (!self.messageButton) {
        self.messageButton = [[UIButton alloc] initWithFrame:CGRectMake(self.customNavigationView.width - 44, self.customNavigationView.height - 44, 44, 44)];
        [self.messageButton setImage:[UIImage imageNamed:@"message"] forState:UIControlStateNormal];
        [self.messageButton addTarget:self action:@selector(messageAction) forControlEvents:UIControlEventTouchUpInside];
        [self.customNavigationView addSubview:self.messageButton];
    }
}

- (void)setBackButtonImage:(UIImage *)image{
    [self.customNavigationView.backButton setImage:image forState:UIControlStateNormal];
}

- (void)setTitleLabelText:(NSString *)text{
    [self.customNavigationView.titleLabel setText:text];
}

- (void)backAction{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)messageAction{
    BCMessageViewController *vc = [[BCMessageViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
