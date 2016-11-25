//
//  Customer.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/19.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "Customer.h"

@implementation Customer

- (void)buyItemCount:(NSInteger)count{
    
    if (self.delegate && [self.delegate respondsToSelector:@selector(customer:buyItemCount:)]) {
        [self.delegate customer:self buyItemCount:count];
    }
    
    
    
}


@end
