//
//  Apple.h
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/20.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MementoCenterProtocol.h"



@interface Apple : NSObject<MementoCenterProtocol>


@property(nonatomic, strong) NSString *name;
@property(nonatomic, strong) NSNumber *age;



@end
