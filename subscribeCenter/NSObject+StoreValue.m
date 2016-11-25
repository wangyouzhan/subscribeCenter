//
//  NSObject+StoreValue.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/20.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "NSObject+StoreValue.h"
#import "StoreValue.h"

@implementation NSObject (StoreValue)


-(void)storeValueWithKey:(NSString *)key{
    
    [[StoreValue sharedInstance] storeValue:self withKey:key];
}

+(id)valueByKey:(NSString *)key{
    
    return [[StoreValue sharedInstance] valueWithKey:key];
    
    
}



@end
