
//
//  CustomNSOperation.m
//  subscribeCenter
//
//  Created by wangyouzhan on 2016/12/8.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "CustomNSOperation.h"


@interface CustomNSOperation ()

@property(nonatomic, copy) NSString *operName;
@property BOOL over;

@end


@implementation CustomNSOperation

-(instancetype)initWithName:(NSString *)name{
    
    if (self = [super init]) {
        self.operName = name;
    }
    return self;
}

-(void)main{
    
//    for(int i = 0; i < 3; i++){
//        NSLog(@"%@, %d", self.operName, i);
//        [NSThread sleepForTimeInterval:1];
//    }

    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        
        [NSThread sleepForTimeInterval:1];
        if (self.cancelled) {
            return ;
        }
        NSLog(@"%@", self.operName);
        self.over = YES;
    });
    
    
    while (!self.over && !self.cancelled) {
        [[NSRunLoop currentRunLoop] runMode:NSDefaultRunLoopMode beforeDate:[NSDate distantFuture]];
    }
    
    
}


@end






































