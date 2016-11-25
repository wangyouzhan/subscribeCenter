//
//  Apple.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/20.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "Apple.h"


@implementation Apple



- (id)currentState{
    
    return  @{@"name": self.name,
              @"age"  : self.age};
    
}



/**
 recover from state
 
 @param state state
 */
- (void)recoverFromState:(id)state{
    
    NSDictionary *data = state;
    self.name = data[@"name"];
    self.age = data[@"age"];
    
    
    
}






@end
