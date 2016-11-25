//
//  FactoryManager.h
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/19.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseFactory.h"

typedef enum : NSUInteger {
    kApple = 0x11,
    kGoogle ,
    
} EfactoryType;


@interface FactoryManager : NSObject


+ (BaseFactory *)factoryWithBrand:(EfactoryType)factoryType;



@end
