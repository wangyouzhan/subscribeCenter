
//
//  GradientCircleViewController.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/27.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "GradientCircleViewController.h"
#import "GradientCircleView.h"

@interface GradientCircleViewController ()
{
 GradientCircleView *circle;
}
@end

@implementation GradientCircleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    circle = [[GradientCircleView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    circle.center = self.view.center;
    circle.startValue = 0.2;
    circle.lineWidth = 3.f;
    
    circle.lineColor = [UIColor greenColor];
    
    [self.view addSubview:circle];
    
    [self performSelector:@selector(delayAnimation) withObject:nil afterDelay:3.f];
    
    
    
}


- (void)delayAnimation{
    circle.value = 0.75;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

























