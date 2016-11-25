//
//  GoogleFactory.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/19.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "GoogleFactory.h"
#import "Android.h"
#import "AndroidWatch.h"

@implementation GoogleFactory

-(BasePhone *)createPhone{
    return [[Android alloc] init];
}


-(BaseWatch *)createWatch{
    return [[AndroidWatch alloc] init];
}



@end
