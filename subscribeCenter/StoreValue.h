//
//  StoreValue.h
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/19.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StoreValue : NSObject

+ (StoreValue *)sharedInstance;

- (void)storeValue:(id)value withKey:(NSString *)key;

- (id)valueWithKey:(NSString *)key;




@end
