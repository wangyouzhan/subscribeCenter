//
//  NSObject+MementoCenter.h
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/20.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (MementoCenter)


/**
  存储状态

 @param key key
 */
- (void)saveStateWithKey: (NSString *)key;


- (void)recoverFromStateWithKey:(NSString *)key;


@end
