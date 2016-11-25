//
//  CAGradientViewController.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/27.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "CAGradientViewController.h"

@interface CAGradientViewController ()

@property (nonatomic, strong) CAGradientLayer *gradientLayer;

@end

@implementation CAGradientViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    //创建并初始化
    self.gradientLayer   = [CAGradientLayer layer];
    self.gradientLayer.frame = CGRectMake(0, 0, 200, 200);
    self.gradientLayer.position = self.view.center;
    self.gradientLayer.borderWidth = 1.f;
    [self.view.layer addSublayer:self.gradientLayer];
    
    
    //设置颜色
    self.gradientLayer.colors = @[(__bridge id)[UIColor redColor].CGColor,
                                  (__bridge id)[UIColor greenColor].CGColor,
                                  (__bridge id)[UIColor blueColor].CGColor];
    //设置颜色渐变的方向
    self.gradientLayer.startPoint = CGPointMake(0, 0);
    self.gradientLayer.endPoint = CGPointMake(1, 0);
    
    self.gradientLayer.locations = @[@(0.25), @(0.5), @(0.75)];
    
    //延迟3秒
    [self performSelector:@selector(gradientLayerLocationAnimation) withObject:nil afterDelay:3.f];
    
    
}


- (void)gradientLayerLocationAnimation{
    self.gradientLayer.locations = @[@(0.49),@(0.5),@(0.8)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end




































