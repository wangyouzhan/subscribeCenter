
//
//  MementoViewController.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/20.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "MementoViewController.h"
#import "Apple.h"
#import "MementoCenter.h"
#import "NSObject+MementoCenter.h"
#import "DemoView.h"


@interface MementoViewController ()

@end

@implementation MementoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    
    Apple *apple = [[Apple alloc] init];
    apple.name = @"jikexueyuan";
    apple.age = @(40);
    
    
    
    
//    [MementoCenter saveMementoObject:apple withKey:@"apple"];
//    
//    [apple recoverFromState:[MementoCenter mementoObjectWithKey:@"apple"]];
    
//    [apple saveStateWithKey:@"apple"];
//    [apple recoverFromStateWithKey:@"apple"];
//    
//    NSLog(@"%@---%@", apple.name, apple.age);

    DemoView *demoView = [[DemoView alloc] init];
//    demoView.frame = CGRectMake(100, 100, 100, 100);
//    
//    [demoView saveStateWithKey:@"A"];
    [demoView recoverFromStateWithKey:@"A"];
    NSLog(@"%@---",demoView);
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
