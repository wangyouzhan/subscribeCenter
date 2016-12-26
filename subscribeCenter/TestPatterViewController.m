
//
//  TestPatterViewController.m
//  subscribeCenter
//
//  Created by wangyouzhan on 2016/12/25.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "TestPatterViewController.h"
#import "Manager.h"


@interface TestPatterViewController ()

@end

@implementation TestPatterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [[Manager sharedInstance] beginPrintTask];
    
}



@end




















