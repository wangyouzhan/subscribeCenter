//
//  Door.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/20.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "Door.h"

@implementation Door



-(void)doorColor:(UIColor*)color{
    
}


/**
 信息
 
 @return 引擎信息
 */
- (NSString *)infomation{
    return @"x1-Engine, scale : 10, weight : 100";
}


-(id)build{
    
    return [Door new];
}




@end
