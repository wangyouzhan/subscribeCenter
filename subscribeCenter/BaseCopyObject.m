//
//  BaseCopyObject.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/17.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "BaseCopyObject.h"

@implementation BaseCopyObject

- (id)copyWithZone:(NSZone *)zone
{
    BaseCopyObject *copyObject = [[self class] allocWithZone:zone];
    
    return copyObject;
}



-(void)copyOperationWithObject:(id)object
{
    
}

@end
