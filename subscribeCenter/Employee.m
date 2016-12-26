//
//  Employee.m
//  subscribeCenter
//
//  Created by wangyouzhan on 2016/12/25.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "Employee.h"
//#import "Manager.h"
#import "PrintNotification.h"

@implementation Employee


+(instancetype)sharedInstance
{
    static Employee* instance = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [Employee new];
    });
    
    return instance;
}


-(instancetype)init
{
    self = [super init];
    if (self) {
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(doPrintJob) name:Notif_BeginPrintTask object:nil];
    }
    return self;
}


-(void)doPrintJob{
    
    
    NSLog(@"doing printing job.....");
//    [[Manager sharedInstance] celebratePrintDone];
//    if (_delegate) {
//        [_delegate printJobDone];
//    }
    [[NSNotificationCenter defaultCenter] postNotificationName:Notif_BeginPrintTask object:nil];
    
}


@end
