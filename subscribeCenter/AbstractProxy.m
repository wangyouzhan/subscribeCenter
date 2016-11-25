//
//  AbstractProxy.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/19.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AbstractProxy.h"
#import "AbstractExcute.h"
#import <objc/runtime.h>

@implementation AbstractProxy


- (NSMethodSignature *)methodSignatureForSelector:(SEL)sel{
    
    if ([self.delegate respondsToSelector:sel]) {
        return [self.delegate methodSignatureForSelector:sel];
    }else{
        AbstractExcute *excute = [AbstractExcute shareInstance];
        return [excute methodSignatureForSelector:NSSelectorFromString(@"nullExcute:")];
    }
    
}


-(void)forwardInvocation:(NSInvocation *)invocation{
    
    SEL selector = [invocation selector];
    
    if ([self.delegate respondsToSelector:selector]) {
        [invocation setTarget:self.delegate];
        [invocation invoke];
    }else{
        NSString *selectorString = NSStringFromSelector(invocation.selector);
        
        invocation.selector    = NSSelectorFromString(@"nullExcute:");
        AbstractExcute *excute = [AbstractExcute shareInstance];
        [invocation setTarget:excute];
        
        const char *className = class_getName([self class]);
        NSArray *infos = nil;
        
        if (self.delegate) {
            infos = @[[NSString stringWithUTF8String:className], selectorString,@""];
        }else{
            infos = @[[NSString stringWithUTF8String:className],selectorString];
        }
        
        
        [invocation setArgument:&infos atIndex:2];
        
        [invocation invoke];
    }
    
}



@end
