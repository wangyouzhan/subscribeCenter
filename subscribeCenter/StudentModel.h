//
//  StudentModel.h
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/17.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PrototypeCopyProtocal.h"

@interface StudentModel : NSObject<PrototypeCopyProtocal>

@property(nonatomic, strong) NSString *name;
@property(nonatomic, strong) NSNumber *age;
@property(nonatomic, strong) NSString *address;
@property(nonatomic, strong) NSNumber *totalScore;


@end
