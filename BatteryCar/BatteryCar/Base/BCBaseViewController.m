//
//  BCBaseViewController.m
//  BatteryCar
//
//  Created by ZhangPeng on 2018/7/30.
//  Copyright © 2018年 braspring. All rights reserved.
//

#import "BCBaseViewController.h"
#import "BCNavigationView.h"

@interface BCBaseViewController ()

@property (strong, nonatomic) BCNavigationView *navigationView; //导航

@end

@implementation BCBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navHeight = 64;
    if (iPhoneX) {
        self.navHeight = 84;
    }
    if (!self.navigationView) {
        self.navigationView = [[BCNavigationView alloc] initWithFrame:CGRectMake(0, 0, self.view.width, self.navHeight)];
        [self.navigationView.backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
        self.navigationView.layer.shadowOpacity = 0.1;
        self.navigationView.layer.shadowColor = [UIColor blackColor].CGColor;
        self.navigationView.layer.shadowRadius = 7;
        [self.view addSubview:self.navigationView];
    }
    
    self.view.backgroundColor = [UIColor colorWithHexString:@"#F2F2F2"];
}

- (void)setBackButtonImage:(UIImage *)image{
    [self.navigationView.backButton setImage:image forState:UIControlStateNormal];
}

- (void)setTitleLabelText:(NSString *)text{
    [self.navigationView.titleLabel setText:text];
}

- (void)backAction{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
