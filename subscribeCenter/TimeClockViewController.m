//
//  TimeClockViewController.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/27.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "TimeClockViewController.h"
#import "YXEasing.h"

@interface TimeClockViewController ()

@property (nonatomic, strong) CALayer *secLayer; //秒针
@property (nonatomic, strong) NSTimer *timer;//定时器


@end

@implementation TimeClockViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    //创建一个表盘
    UIView *showView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 300, 300)];
    showView.center  = self.view.center;
    showView.layer.borderWidth = 1.f;
    showView.layer.cornerRadius = 150;
    showView.layer.borderColor = [UIColor redColor].CGColor;
    [self.view addSubview:showView];
    
    //创建出秒针layer
    self.secLayer = [CALayer layer];
    self.secLayer.anchorPoint = CGPointMake(0, 0);
    self.secLayer.frame = CGRectMake(150, 150, 1, 150);
    self.secLayer.backgroundColor = [UIColor blackColor].CGColor;
    [showView.layer addSublayer:self.secLayer];
    
    
    //创建中心点
    UIView *redDot = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 10, 10)];
    redDot.center = self.view.center;
    redDot.layer.backgroundColor = [UIColor greenColor].CGColor;
    redDot.layer.cornerRadius = 5.f;
    [self.view addSubview:redDot];
    
    
    
    //创建定时器
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1.f
                                                  target:self
                                                selector:@selector(timerEvent)
                                                userInfo:nil
                                                 repeats:YES];
    
    
}

- (void)timerEvent{
    
    static int i = 1;
    
    CGFloat oldValue = DEGREES_TO_RADIANS((360 / 60.f) * i++);
    CGFloat newValue = DEGREES_TO_RADIANS((360 / 60.f) * i);
    
    //创建关键帧动画
    CAKeyframeAnimation *keyFrameAnimation = [CAKeyframeAnimation animation];
    keyFrameAnimation.keyPath = @"transform.rotation.z";
    keyFrameAnimation.duration = 0.5;
    keyFrameAnimation.values = [YXEasing calculateFrameFromValue:oldValue
                                                         toValue:newValue
                                                            func:ElasticEaseOut
                                                      frameCount:0.5 * 30];
    self.secLayer.transform = CATransform3DMakeRotation(newValue, 0, 0, 1);
    [self.secLayer addAnimation:keyFrameAnimation forKey:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end





























