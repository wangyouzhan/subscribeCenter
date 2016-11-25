//
//  UserInfoManagerCenter.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/19.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "UserInfoManagerCenter.h"

static UserInfoManagerCenter *center = nil;

@implementation UserInfoManagerCenter

//+(void)initialize{
//     static UserInfoManagerCenter *center = nil;
//    
//    if (self == [UserInfoManagerCenter class]) {
//         center = [[UserInfoManagerCenter alloc] init];
//    }
//    
//    
//}
//
//+ (instancetype)managerCenter{
//    
//    static UserInfoManagerCenter *center = nil;
//    
//    if (center == nil) {
//        center = [[UserInfoManagerCenter alloc] init];
//    }
//    
//    return  center;
//    
//}


+ (instancetype)managerCenter{
    
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        center = (UserInfoManagerCenter *)@"UserInfoManagerCenter";
        center = [[UserInfoManagerCenter alloc] init];
    });
    
    
    NSString *classString = NSStringFromClass([self class]);
    if ([classString isEqualToString:@"UserInfoManagerCenter"] == NO) {
        NSParameterAssert(nil);
    }
    
    return  center;
    
}

-(instancetype)init{
    
    NSString *string = (NSString *)center;
    if ([string isKindOfClass:[NSString class]] == YES && [string isEqualToString:@"UserInfoManagerCenter"]) {
        self = [super init];
        if (self) {
            //防止子类使用
            NSString *classString = NSStringFromClass([self class]);
            if ([classString isEqualToString:@"UserInfoManagerCenter"] == NO) {
                NSParameterAssert(nil);
            }
        }
        return self;
    } else {
        return  nil;
    }

}





@end



















