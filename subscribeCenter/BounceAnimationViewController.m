//
//  BounceAnimationViewController.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/27.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "BounceAnimationViewController.h"
#import "YXEasing.h"


@interface BounceAnimationViewController ()

@end

@implementation BounceAnimationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 320, 320)];
    imageView.image = [UIImage imageNamed:@"first_selected"];
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    [self.view addSubview:imageView];
    
    CAKeyframeAnimation *keyFrameAnimation = [CAKeyframeAnimation animation];
    keyFrameAnimation.keyPath = @"position";
    keyFrameAnimation.duration = 2.f;
    keyFrameAnimation.values = [YXEasing calculateFrameFromPoint:imageView.center
                                                         toPoint:CGPointMake(320 / 2.f, 320 / 2.f + 240)
                                                            func:BounceEaseOut
                                                      frameCount:2 * 30];
    imageView.center = CGPointMake(320 / 2.f, 320 / 2.f + 240);
    [imageView.layer addAnimation:keyFrameAnimation forKey:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    
}

@end





























