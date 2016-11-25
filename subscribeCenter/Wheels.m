//
//  Wheels.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/20.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "Wheels.h"

@implementation Wheels



/**
 轮子
 
 @param number 轮子
 */
- (void)wheelsNumber:(NSNumber*) number{
    
}

/**
 信息
 
 @return 引擎信息
 */
- (NSString *)infomation{
    return @"wheel";
}


-(id)build{
    return [Wheels new];
}

@end
