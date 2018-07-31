//
//  BCLoginView.m
//  BatteryCar
//
//  Created by ZhangPeng on 2018/7/30.
//  Copyright © 2018年 braspring. All rights reserved.
//

#import "BCLogin_View.h"

@interface BCLogin_View()

@property (weak, nonatomic) IBOutlet UIView *tfView;
@property (weak, nonatomic) IBOutlet UITextField *phoneTF;
@property (weak, nonatomic) IBOutlet UITextField *codeTF;
@property (weak, nonatomic) IBOutlet UIButton *loginButton;
@property (weak, nonatomic) IBOutlet UIButton *codeButton;


@end

@implementation BCLogin_View

+ (BCLogin_View *)shareBCLogin_View{
    BCLogin_View *view = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([BCLogin_View class]) owner:self options:nil] objectAtIndex:0];
    return view;
}

- (void)layoutSubviews{
    [super layoutSubviews];
    
    [self.tfView addShadowWithRadius:3];
    [self.loginButton addShadowWithRadius:3];
    self.loginButton.layer.cornerRadius = self.loginButton.height / 2;
}

@end
