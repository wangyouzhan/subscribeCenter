//
//  CALayerViewController.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/24.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "CALayerViewController.h"

@interface CALayerViewController ()

@property(nonatomic, strong) CALayer *normalLayer;
@property(nonatomic, strong) CALayer *popLayer;

@end

@implementation CALayerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self accessNormalLayer];
    
}

- (void)accessNormalLayer{
    
    //初始化Layer
    self.normalLayer = [CALayer layer];
    self.normalLayer.frame = CGRectMake(100, 100, 100, 100);
    self.normalLayer.backgroundColor = [UIColor redColor].CGColor;
    [self.view.layer addSublayer:self.normalLayer];
    
    //初始化动画
    CABasicAnimation *basicAnimation = [CABasicAnimation animationWithKeyPath:@"position"];
    basicAnimation.fromValue = [NSValue valueWithCGPoint:self.normalLayer.position];
    basicAnimation.toValue = [NSValue valueWithCGPoint:CGPointMake(100 + 50, 400)];
    basicAnimation.duration = 4.f;
    basicAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    
    
    
    
    //设定结束位置的值
    self.normalLayer.position = CGPointMake(100 + 50, 400);
    
    //开始动画
    [self.normalLayer addAnimation:basicAnimation forKey:nil];
    
    //1.5s移除动画
    [self performSelector:@selector(removeNormalAnimation) withObject:nil afterDelay:1.5];
    
}


- (void)removeNormalAnimation {
    
    CALayer *layer = self.normalLayer.presentationLayer;
    
    NSLog(@"%@", NSStringFromCGRect(self.normalLayer.frame));
    NSLog(@"%@", NSStringFromCGRect(layer.frame));
    
    
    [self.normalLayer removeAllAnimations];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end






























