//
//  TicketManager.m
//  subscribeCenter
//
//  Created by wangyouzhan on 2016/12/7.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "TicketManager.h"


#define Total 50

@interface TicketManager ()

@property int tickets; //剩余票数
@property int saleCount; //卖出票数

@property(nonatomic, strong) NSThread *threadBJ;
@property(nonatomic, strong) NSThread *threadSH;

@property(nonatomic, strong) NSCondition *condition;

@end


@implementation TicketManager


-(instancetype)init{
    
    if (self = [super init]) {
        self.condition = [[ NSCondition alloc] init];
        self.tickets = Total;
        self.threadBJ = [[NSThread alloc] initWithTarget:self selector:@selector(sale ) object:nil];
        [self.threadBJ setName:@"张三"];
        self.threadSH = [[NSThread alloc] initWithTarget:self selector:@selector(sale ) object:nil];
        [self.threadSH setName:@"李四"];
    }
    
    
    return self;
}


- (void)sale{
    
    while (true) {
//        @synchronized (self) {
        [self.condition lock];
            if (self.tickets > 0) {
                [NSThread sleepForTimeInterval:0.5];
                self.tickets --;
                self.saleCount = Total - self.tickets;
                
                NSLog(@"%@:当前余票： %d, 售出: %d", [NSThread currentThread].name,self.tickets, self.saleCount);
            }
        [self.condition unlock];
//        }
    }
    
    
}


-(void)startSale{
    
    [self.threadSH start];
    [self.threadBJ start];
}


@end
































