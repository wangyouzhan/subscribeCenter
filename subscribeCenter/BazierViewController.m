//
//  BazierViewController.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/27.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "BazierViewController.h"

@interface BazierViewController ()

@end

@implementation BazierViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    //创建椭圆形贝塞尔曲线
    UIBezierPath *oval = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, 200, 100)];
    
    //创建矩形贝塞尔曲线
    UIBezierPath *rect = [UIBezierPath bezierPathWithRect:CGRectMake(0, 0, 200, 100)];
    
    //创建圆形贝塞尔曲线
    UIBezierPath *circle = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, 100, 100)];
    
    //创建CAShapeLayer
    CAShapeLayer *shape = [CAShapeLayer layer];
    shape.frame = CGRectMake(0, 0, 200, 200);
    shape.position = self.view.center;
    shape.borderWidth = 1.f;
    
    //修改贝塞尔曲线填充颜色
    shape.fillColor = [UIColor redColor].CGColor;
    
    //创建贝塞尔曲线与CAShapeLayer之间的关系
    shape.path = oval.CGPath;
    
    
    [self.view.layer addSublayer:shape];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

























