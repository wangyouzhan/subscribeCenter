//
//  BasicAnimationViewController.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/26.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "BasicAnimationViewController.h"
#import "YXEasing.h"

@interface BasicAnimationViewController ()

@end

@implementation BasicAnimationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //添加显示用的View
    UIView *showView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    showView.layer.cornerRadius = 50;
    showView.layer.masksToBounds = YES;
    showView.backgroundColor = [UIColor  redColor];
    [self.view addSubview:showView];
    
    
//    //基本动画类型
//    CABasicAnimation *basicAnimation = [CABasicAnimation animation];
//    basicAnimation.keyPath = @"position";
//    basicAnimation.duration = 4.f;
//    basicAnimation.fromValue = [NSValue valueWithCGPoint:showView.center];
//    basicAnimation.toValue = [NSValue valueWithCGPoint:CGPointMake(200, 200)];
//    
//    showView.center = CGPointMake(200, 200);
//    [showView.layer addAnimation:basicAnimation forKey:nil];
    
    //关键帧动画
//    CAKeyframeAnimation *keyFrameAnimation = [CAKeyframeAnimation animation];
//    keyFrameAnimation.keyPath = @"position";
//    keyFrameAnimation.duration = 4.f;
//    
//    keyFrameAnimation.values = @[[NSValue valueWithCGPoint:showView.center],
//                                 [NSValue valueWithCGPoint:CGPointMake(200, 200)]];
//    showView.center = CGPointMake(200, 200);
//    [showView.layer addAnimation:keyFrameAnimation forKey:nil];
    
    
    //缓动动画
    CAKeyframeAnimation *keyFrameAnimation = [CAKeyframeAnimation animation];
    keyFrameAnimation.keyPath = @"position";
    keyFrameAnimation.duration = 4.f;
    
    //设置关键帧
    keyFrameAnimation.values = [YXEasing calculateFrameFromPoint:showView.center
                                                         toPoint:CGPointMake(50, 300)
                                                            func:ElasticEaseOut
                                                      frameCount:1.f * 30];
    //做动画
    showView.center = CGPointMake(50, 300);
    [showView.layer addAnimation:keyFrameAnimation forKey:nil];
    

    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end




































