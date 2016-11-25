//
//  AppleFactory.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/19.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "AppleFactory.h"
#import "iPhone.h"
#import "iWatch.h"

@implementation AppleFactory


-(BaseWatch *)createWatch{
    return [[iWatch alloc] init];
}

-(BasePhone *)createPhone{
    
    return [[iPhone alloc] init];
}

@end
