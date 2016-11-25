//
//  CircleViewController.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/27.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "CircleViewController.h"

@interface CircleViewController ()

@property (nonatomic,strong) CAShapeLayer *shapeLayer;
@property (nonatomic, strong) NSTimer *timer;

@end

@implementation CircleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.view.backgroundColor = [UIColor blackColor];
    
    //创建出CAShapeLayer
    self.shapeLayer   = [CAShapeLayer layer];
    self.shapeLayer.frame = CGRectMake(0, 0, 200, 200);
    self.shapeLayer.position = self.view.center;
    self.shapeLayer.fillColor = [UIColor clearColor].CGColor;
    
    self.shapeLayer.lineWidth = 1.f;
    self.shapeLayer.strokeColor = [UIColor redColor].CGColor;
    
    self.shapeLayer.strokeStart = 0.25;
    self.shapeLayer.strokeEnd = 0.75;
    
    //创建出图形贝塞尔曲线
    UIBezierPath *circlePath = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, 200, 200)];
    
    //让贝塞尔曲线
    self.shapeLayer.path = circlePath.CGPath;
    
    //添加并显示
    [self.view.layer addSublayer:self.shapeLayer];
    
    _timer = [NSTimer scheduledTimerWithTimeInterval:1.f
                                              target:self
                                            selector:@selector(circleAnimationTypeTwo)
                                            userInfo:nil
                                             repeats:YES];
    
}


- (void)circleAnimationTypeOne{
    self.shapeLayer.strokeEnd = arc4random() % 100 / 100.f;
}

- (void)circleAnimationTypeTwo{
    
    CGFloat valueOne = arc4random() % 100 / 100.f;
    CGFloat valueTwo = arc4random() % 100 / 100.f;
    
    self.shapeLayer.strokeStart = valueOne > valueTwo ? valueTwo : valueOne;
    self.shapeLayer.strokeEnd= valueOne < valueTwo ? valueTwo : valueOne;
    
    
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end




















