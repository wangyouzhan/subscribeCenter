//
//  Manager.m
//  subscribeCenter
//
//  Created by wangyouzhan on 2016/12/25.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "Manager.h"
//#import "Employee.h"
//#import "Employee.h"
#import "PrintNotification.h"

@interface Manager ()

@end

@implementation Manager


+(instancetype)sharedInstance
{
    static Manager* instance = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [Manager new];
    });
    
    return instance;
}


-(void)printJobDone{
//     [[Employee sharedInstance] doPrintJob];
}

- (void)celebratePrintDone
{
    NSLog(@"celebrate print done");
}


- (void)beginPrintTask{
    
    [[NSNotificationCenter defaultCenter] postNotificationName:Notif_BeginPrintTask object:nil];
    
//    [Employee sharedInstance].delegate = self;
//    [[Employee sharedInstance] doPrintJob];
    
}


@end
