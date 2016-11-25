//
//  Customer.h
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/19.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CustomeViewController.h"

@class Customer;

@protocol CustomerDelegate <NSObject>

@required
- (void)customer:(Customer*)customer buyItemCount:(NSInteger)count;

@end


@interface Customer : NSObject


//经销商
@property(nonatomic, weak) id<CustomerDelegate> delegate;

//顾客买卖行为
- (void)buyItemCount:(NSInteger)count;



@end
