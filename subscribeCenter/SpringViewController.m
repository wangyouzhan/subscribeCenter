//
//  SpringViewController.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/26.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "SpringViewController.h"
#import <pop/POP.h>

@interface SpringViewController ()

@property(nonatomic, strong) UIView *showView;

@end

@implementation SpringViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    //设置背景颜色
    self.view.backgroundColor = [UIColor blackColor];
    
    
    //初始化View
    self.showView    = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
    self.showView.backgroundColor = [UIColor cyanColor];
    self.showView.center = self.view.center;
    [self.view addSubview:self.showView];
    
   
    [self performSelector:@selector(startSpringAnimation) withObject:nil afterDelay:3.f];
    
    
    
}



- (void)startSpringAnimation{
    
    //初始化spring动画
    POPSpringAnimation *sizeAnimation = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerBounds];
    sizeAnimation.springSpeed   = 0.f;
    sizeAnimation.toValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 200, 200)];
    
    //添加动画
    [self.showView pop_addAnimation:sizeAnimation forKey:nil];
    

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end

















