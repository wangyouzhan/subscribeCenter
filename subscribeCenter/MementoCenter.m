//
//  MementoCenter.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/20.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "MementoCenter.h"
#import "FastCoder.h"

@implementation MementoCenter


+(void)saveMementoObject:(id<MementoCenterProtocol>)object withKey:(NSString *)key{
    
    NSParameterAssert(object);
    NSParameterAssert(key);
    
    
    //获取data
    id data = [object currentState];
    
    NSData *tempData = [FastCoder dataWithRootObject:data];
    
    if (tempData) {
        [[NSUserDefaults standardUserDefaults] setObject:tempData forKey:key];
    }
    
    
}

+ (id)mementoObjectWithKey:(NSString *)key{
    
    NSParameterAssert(key);
    
    id data          = nil;
    
    NSData *tempData = [[NSUserDefaults standardUserDefaults] objectForKey:key];
    
    if (tempData) {
        data         = [FastCoder objectWithData:tempData];
    }
    
    
    
    return data;
}



@end
