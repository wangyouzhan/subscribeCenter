//
//  MaskViewViewController.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/24.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "MaskViewViewController.h"

@interface MaskViewViewController ()

@end

@implementation MaskViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(20, 20, 200, 200)];
    imageView.image = [UIImage imageNamed:@"s1"];
    [self.view addSubview:imageView];
    
    
    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
//    gradientLayer.frame = CGRectMake(20, 20 + 200, 200, 200);
    gradientLayer.frame = imageView.bounds;
    gradientLayer.colors = @[(__bridge id)[UIColor clearColor].CGColor,
                             (__bridge id)[UIColor blackColor].CGColor,
                             (__bridge id)[UIColor clearColor].CGColor];
    gradientLayer.locations = @[@(0.25),@(0.5),@(0.75)];
    gradientLayer.startPoint = CGPointMake(0, 0);
    gradientLayer.endPoint = CGPointMake(1, 1);
    
    //容器view
    UIView *containerView = [[UIView alloc] initWithFrame:imageView.frame];
    [containerView.layer addSublayer:gradientLayer];
    
//    [self.view.layer addSublayer:gradientLayer];
    
    imageView.maskView = containerView;
    
    CGRect frame = containerView.frame;
    frame.origin.x -= 200;
    
    //重新赋值
    containerView.frame = frame;
    
    [UIView animateWithDuration:6 animations:^{
        CGRect frame = containerView.frame;
        frame.origin.x += 400;
        containerView.frame = frame;
        
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
