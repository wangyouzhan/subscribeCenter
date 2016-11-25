//
//  DemoView.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/20.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "DemoView.h"

@implementation DemoView


-(id)currentState{
    
    return @{@"frame": NSStringFromCGRect(self.frame)};
    
}


- (void)recoverFromState:(id)state{
    
    NSDictionary *data = state;
    
    self.frame = CGRectFromString(data[@"frame"]);
    
}



@end
