//
//  EmitterViewController.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/27.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "EmitterViewController.h"

@interface EmitterViewController ()

@end

@implementation EmitterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    //创建layer
    CAEmitterLayer *emitterLayer = [CAEmitterLayer layer];
    
    //给定尺寸
    emitterLayer.frame = CGRectMake(100, 100, 100, 100);
    
//    emitterLayer.masksToBounds = YES;
    emitterLayer.borderWidth = 1.f;
    
    //给定尺寸
    emitterLayer.frame = CGRectMake(200, 200, 100, 100);
    
    //发射点
    emitterLayer.position = CGPointMake(200, 200);
    
    //发射模式
    emitterLayer.emitterMode = kCAEmitterLayerSurface;
    
    //发射形状
    emitterLayer.emitterShape = kCAEmitterLayerLine;
    
    
    //添加layer
    [self.view.layer addSublayer:emitterLayer];
    
    
    CAEmitterCell *cell = [CAEmitterCell emitterCell];
    
    //离子产生率
    cell.birthRate = 1.f;
    
    //粒子生命周期
    cell.lifetime = 50.f;
    
    //速度值
    cell.velocity = 10;
    
    //速度值的微调值
    cell.velocityRange = 3.f;
    
    //y轴加速度
    cell.yAcceleration = 2.f;
    
    //发射角度
    cell.emissionRange = 5 * M_1_PI;
    
    //设置图片
    cell.contents = (__bridge id)([UIImage imageNamed:@"first_selected"].CGImage);
    
    //rangCAEmitterCell与CAEmitterLayer产生关系
    emitterLayer.emitterCells = @[cell];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end















































