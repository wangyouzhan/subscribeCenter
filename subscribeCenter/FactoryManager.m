//
//  FactoryManager.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/19.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "FactoryManager.h"
#import "AppleFactory.h"
#import "GoogleFactory.h"

@implementation FactoryManager


+(BaseFactory *)factoryWithBrand:(EfactoryType)factoryType
{
    BaseFactory *factory = NULL;
    
    if (factoryType == kApple) {
        factory = [[AppleFactory alloc]init];
    }else{
        factory = [[GoogleFactory alloc] init];
    }
    
    
    return factory;
    
}


@end
