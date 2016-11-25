//
//  UserInfoManagerCenter.h
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/19.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserInfoManagerCenter : NSObject

@property(nonatomic, strong) NSString *name;
@property(nonatomic, strong) NSNumber *age;

+ (instancetype)managerCenter;


@end
