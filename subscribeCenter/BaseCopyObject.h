//
//  BaseCopyObject.h
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/17.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseCopyObject : NSObject<NSCopying>

-(id)copyWithZone:(NSZone *)zone;

- (void)copyOperationWithObject:(id)object;


@end
