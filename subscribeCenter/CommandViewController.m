//
//  CommandViewController.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/19.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "CommandViewController.h"
#import "GBAImplementor.h"
#import "GBASystem.h"
#import "PSPSytem.h"
#import "PSPImplementor.h"


@interface CommandViewController ()

@end

@implementation CommandViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    AbstractSystem *gbaSystem = [[GBASystem alloc] init];
    [gbaSystem loadSystem];
    
    
    gbaSystem.implementor = [[GBAImplementor alloc] init];
    [gbaSystem command_up];
    
    
    PSPSytem *pspSytem = [[PSPSytem alloc] init];
    pspSytem.implementor = [[PSPImplementor alloc] init];
    
    
    [pspSytem loadSystem];
    [pspSytem command_X];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end


























