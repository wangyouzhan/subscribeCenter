//
//  CustermEmitterViewController.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/27.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "CustermEmitterViewController.h"
#import "CAEmitterLayerView.h"
#import "SnowView.h"

@interface CustermEmitterViewController ()

@end

@implementation CustermEmitterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    CAEmitterLayerView *layerView = [[SnowView alloc] initWithFrame:CGRectMake(20, 50, 300, 400)];
    
    [self.view addSubview:layerView];
    [layerView show];
    
    
    NSLog(@"%@", layerView);
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
























