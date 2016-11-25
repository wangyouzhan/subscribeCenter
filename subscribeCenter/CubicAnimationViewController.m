//
//  CubicAnimationViewController.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/27.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "CubicAnimationViewController.h"
#import "YXEasing.h"

@interface CubicAnimationViewController ()

@end

@implementation CubicAnimationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //背景变暗的view
    UIView *backView = [[UIView alloc] initWithFrame:self.view.bounds];
    backView.backgroundColor = [UIColor blackColor];
    backView.alpha = 0;
    [UIView animateWithDuration:1.f animations:^{
        backView.alpha = 0.3;
    }];
    [self.view addSubview:backView];
    
    //创建模拟的菜单
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(320, 0, 320, 568)];
    imageView.image = [UIImage imageNamed: @"first_selected"];
    [self.view addSubview:imageView];
    
    
    //创建关键帧动画
    CAKeyframeAnimation *keyFrameAnimation = [CAKeyframeAnimation animation];
    keyFrameAnimation.keyPath = @"position";
    keyFrameAnimation.duration = 1.f;
    keyFrameAnimation.values = [YXEasing calculateFrameFromPoint:imageView.center
                                                         toPoint:CGPointMake(self.view.center.x + 100, self.view.center.y)
                                                            func:CubicEaseOut
                                                      frameCount:1 * 30];
    
    //加载关键帧动画
    imageView.center = CGPointMake(self.view.center.x + 100, self.view.center.y);
    [imageView.layer addAnimation:keyFrameAnimation forKey:nil];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end































