//
//  StudentTwoModel.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/17.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "StudentTwoModel.h"

@implementation StudentTwoModel

-(id)copyWithZone:(NSZone *)zone
{
    StudentTwoModel *copyObject = [[self class] allocWithZone:zone];
    copyObject.name = self.name;
    copyObject.age = self.age;
    return copyObject;
    
}

-(void)copyOperationWithObject:(StudentTwoModel *)object
{
    object.name = self.name;
    object.age = self.age;
    
    
}



@end
