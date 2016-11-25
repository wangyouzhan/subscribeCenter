//
//  NSObject+MementoCenter.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/20.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "NSObject+MementoCenter.h"
#import "MementoCenter.h"

@implementation NSObject (MementoCenter)

- (void)saveStateWithKey:(NSString *)key{
    
    id<MementoCenterProtocol> obj = (id<MementoCenterProtocol>)self;
    if ([obj respondsToSelector:@selector(currentState)]) {
        [MementoCenter saveMementoObject:obj withKey:key];
    }

}


-(void)recoverFromStateWithKey:(NSString *)key{
    
    id state = [MementoCenter mementoObjectWithKey:key];
    id<MementoCenterProtocol> obj = (id<MementoCenterProtocol>)self;
    
    if ([obj respondsToSelector:@selector(recoverFromStateWithKey:)]) {
        [obj recoverFromState:state];
    }

}


@end
