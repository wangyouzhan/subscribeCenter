//
//  TestSingle.m
//  subscribeCenter
//
//  Created by wangyouzhan on 2016/12/7.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "TestSingle.h"

@implementation TestSingle


+ (instancetype)instance{
    
    static dispatch_once_t onceToken;
    static TestSingle *ins = nil;
    dispatch_once(&onceToken, ^{
        NSLog(@"init sigle...");
        ins = [[TestSingle alloc] init];
    });
    
    return ins;
}



@end




























