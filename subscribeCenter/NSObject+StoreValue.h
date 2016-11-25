//
//  NSObject+StoreValue.h
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/20.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (StoreValue)


- (void)storeValueWithKey:(NSString *)key;

+ (id)valueByKey:(NSString*)key;






@end
