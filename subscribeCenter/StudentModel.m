//
//  StudentModel.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/17.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "StudentModel.h"

@implementation StudentModel


-(id)clone
{
 
    StudentModel *student = [[[self class] alloc] init];
    student.name = self.name;
    student.age = self.age;
    student.address = self.address;
    student.totalScore = self.totalScore;
    
    return student;
    
    
}


@end
