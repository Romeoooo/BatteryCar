//
//  BCHomeViewController.m
//  BatteryCar
//
//  Created by ZhangPeng on 2018/7/30.
//  Copyright © 2018年 braspring. All rights reserved.
//

#import "BCHomeViewController.h"
#import "BCHome_NoCarView.h"
#import "FXBlurView.h"
#import "BCLoginViewController.h"

@interface BCHomeViewController ()

//没有租车
@property (strong, nonatomic) BCHome_NoCarView *noCarView; //没有租车显示视图
@property (strong, nonatomic) FXBlurView *blurView; //模糊视图
//有租车

@end

@implementation BCHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitleLabelText:@"小哥租车"];
    [self setBackButtonImage:[UIImage imageNamed:@"user_center"]];
    [self addMessageButton];
    
    //TODO:::
    UIImageView *testView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.view.width, self.view.height)];
    testView.image = [UIImage imageNamed:@"test_map.jpg"];
    testView.contentMode = UIViewContentModeScaleAspectFill;
    [self.view insertSubview:testView atIndex:0];
    
    [self initNoCarView];
}

- (void)initNoCarView{
    if (!self.blurView) {
//        self.blurView = [[FXBlurView alloc] init];
//        [self.blurView setFrame:CGRectMake(0, self.navHeight, self.view.width, self.view.height - self.navHeight)];
//        [self.blurView setBackgroundColor:[UIColor whiteColor]];
//        //设置模式
//        self.blurView.dynamic = YES;
//        //设置模糊半径
//        self.blurView.blurRadius = 4;
//        self.blurView.tintColor = [UIColor blackColor];
//        [self.view addSubview:self.blurView];
    }
    if (!self.noCarView) {
        self.noCarView = [[BCHome_NoCarView alloc] initWithFrame:CGRectMake(0, self.navHeight, self.view.width, self.view.height - self.navHeight)];
        [self.view addSubview:self.noCarView];
        [self.noCarView.carButton addTarget:self action:@selector(receiveCarAction) forControlEvents:UIControlEventTouchUpInside];
    }
}

#pragma mark - Private
// 领车
- (void)receiveCarAction{
    BCLoginViewController *vc = [[BCLoginViewController alloc] init];
    [self presentViewController:vc animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
