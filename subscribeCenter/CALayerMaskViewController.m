//
//  CALayerMaskViewController.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/28.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "CALayerMaskViewController.h"

@interface CALayerMaskViewController ()


@property (nonatomic, strong) UIImage *imageContents;
@property (nonatomic, strong) UIImage *maskContents;

@property (nonatomic, strong) CALayer *imageLayer;
@property (nonatomic, strong) CALayer *maskLayer;

@end

@implementation CALayerMaskViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [ UIColor blackColor];
    
    //获取图片
    self.imageContents = [UIImage imageNamed:@"s1"];
    
    self.imageLayer = [CALayer layer];
    self.imageLayer.frame = CGRectMake(50, 50, 200, 200);
    self.imageLayer.contents = (__bridge id _Nullable)(self.imageContents.CGImage);
    [self.view.layer addSublayer:self.imageLayer];
    
    //创建遮罩layer
    self.maskLayer = [CALayer layer];
    self.maskLayer.frame = self.imageLayer.bounds;
    self.maskLayer.backgroundColor = [UIColor blackColor].CGColor;
    
    self.imageLayer.mask = self.maskLayer;
    
    [self performSelector:@selector(maskLayerAnimation)
               withObject:nil
               afterDelay:3.f];
    
    
    
    
    
}


- (void)maskLayerAnimation {
    self.maskLayer.frame = CGRectMake(50, 50, 200, 200);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end






























