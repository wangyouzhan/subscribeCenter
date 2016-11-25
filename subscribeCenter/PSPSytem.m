//
//  PSPSytem.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/19.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "PSPSytem.h"

@implementation PSPSytem


-(void)loadSystem{
    NSLog(@"pspSytem");
}


-(void)command_X{
    [self.implementor loadCommand:kX];
}


-(void)command_O{
    [self.implementor loadCommand:kO];
    
    
}

@end
