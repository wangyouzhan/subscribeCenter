//
//  BaseFactory.h
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/19.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BasePhone.h"
#import "BaseWatch.h"

@interface BaseFactory : NSObject


/**
 创建手机

 @return 手机
 */
- (BasePhone *)createPhone;


/**
 创建手表

 @return 手表
 */
- (BaseWatch *)createWatch;



@end


























