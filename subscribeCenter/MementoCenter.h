//
//  MementoCenter.h
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/20.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MementoCenterProtocol.h"

@interface MementoCenter : NSObject




+ (void)saveMementoObject:(id<MementoCenterProtocol>)object withKey:(NSString*)key;

+ (id)mementoObjectWithKey:(NSString *)key;




@end
