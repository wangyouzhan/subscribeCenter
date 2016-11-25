//
//  ProgressBarViewController.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/27.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "ProgressBarViewController.h"

@interface ProgressBarViewController ()

@property (nonatomic, strong) CALayer *layer;

@end

@implementation ProgressBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    //创建一个容器view
    UIView *containerView = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 200, 3)];
    containerView.backgroundColor = [UIColor redColor];
    [self.view addSubview:containerView];
    
    //创建一个独立的layer
    self.layer = [CALayer layer];
    self.layer.frame = CGRectMake(0, 0, 20, 3);
    self.layer.backgroundColor = [UIColor greenColor].CGColor;
    
    [containerView.layer addSublayer:self.layer];
    
    
    
    
    [self performSelector:@selector(layerAnimation)
               withObject:nil
               afterDelay:3.f];
    
    
    
}

-(void)layerAnimation{
    self.layer.frame = CGRectMake(0, 0, 200, 3);
    self.layer.backgroundColor = [UIColor blueColor].CGColor;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end



































