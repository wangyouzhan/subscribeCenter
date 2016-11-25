//
//  SubscriptionServiceCenter.h
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/17.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SubcriptionServiceCenterProtocal.h"

@interface SubscriptionServiceCenter : NSObject


#pragma mark - 维护订阅信息

/**
 创建你订阅号

 @param subscriptionNumber 订阅号码
 */
+ (void)createSubscriptionNumber:(NSString *)subscriptionNumber;



/**
 移除订阅号

 @param subscriptionNumber 订阅号
 */
+ (void)removeSubscriptionNumber:(NSString *)subscriptionNumber;


#pragma mark - 维护客户信息
/**
 添加客户到具体的订阅号当中

 @param customer           客户
 @param subscriptionNumber 订阅号
 */
+ (void)addCustomer:(id<SubcriptionServiceCenterProtocal>)customer withSubscriptionNumber:(NSString*)subscriptionNumber;



/**
 从订阅号中移除客户

 @param customer           客户
 @param subscriptionNumber 订阅号
 */
+ (void)removeCustomer:(id<SubcriptionServiceCenterProtocal>)customer withSubscriptionNumber:(NSString*)subscriptionNumber;

#pragma mark - 发送消息

+ (void)sendMessage:(id)message toSubscriptionNumber:(NSString *)subscriptionNumber;


@end



















