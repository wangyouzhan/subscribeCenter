//
//  AbstractImplementor.h
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/19.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum : NSUInteger {
    kUp ,
    kDown ,
    kLeft ,
    kRight,
    kA,
    kB,
    
    kX,
    kO,
    
} EcommandType;

@interface AbstractImplementor : NSObject


- (void)loadCommand:(EcommandType)type;



@end
