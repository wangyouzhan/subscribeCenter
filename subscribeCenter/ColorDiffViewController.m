//
//  ColorDiffViewController.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/27.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "ColorDiffViewController.h"

@interface ColorDiffViewController ()

@property (nonatomic, strong) CAGradientLayer *gradientLayer;
@property (nonatomic, strong) NSTimer *timer;

@end

@implementation ColorDiffViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    //创建背景图片
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"s1"]];
    imageView.center = self.view.center;
    [self.view addSubview:imageView];
    
    //初始化渐变层
    self.gradientLayer = [CAGradientLayer layer];
    self.gradientLayer.frame = imageView.bounds;
    [imageView.layer addSublayer:self.gradientLayer];
    
    //设定颜色渐变方向
    self.gradientLayer.startPoint = CGPointMake(0, 0);
    self.gradientLayer.endPoint = CGPointMake(0, 1);
    
    //设定颜色组
    self.gradientLayer.colors = @[(__bridge id)[UIColor redColor].CGColor,
                                  (__bridge id)[UIColor blueColor].CGColor];
    
    self.gradientLayer.locations = @[@(0.5f),@(1.f)];
    
    //初始化定时器
    self.timer = [NSTimer scheduledTimerWithTimeInterval:0.5f
                                                  target:self
                                                selector:@selector(timerEvent)
                                                userInfo:nil
                                                 repeats:YES];


}

- (void)timerEvent{
    
    self.gradientLayer.colors = @[(__bridge id)[UIColor clearColor].CGColor,
                                  (__bridge id)[UIColor colorWithRed:arc4random() % 255 / 255.f
                                                               green:arc4random() % 255 / 255.f
                                                                blue:arc4random() % 255 / 255.f
                                                               alpha:1].CGColor
                                  ];
    
    self.gradientLayer.locations = @[@(arc4random() % 10 / 10.f), @(1.f)];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end


























