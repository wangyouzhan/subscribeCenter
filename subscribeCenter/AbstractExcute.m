//
//  AbstractExcute.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/19.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "AbstractExcute.h"

@implementation AbstractExcute


+ (instancetype)shareInstance{
    
    static AbstractExcute *excute = nil;
    
    static dispatch_once_t *predicate;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        excute = [[AbstractExcute alloc] init];
    });
    
    return excute;

}


- (void)nullExcute:(NSArray *)info{
    
    NSLog(@"%@",info);
}


@end
