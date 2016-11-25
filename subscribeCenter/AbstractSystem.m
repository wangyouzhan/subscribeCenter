//
//  AbstractSystem.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/19.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "AbstractSystem.h"

@implementation AbstractSystem

- (void)command_up{
    [self.implementor loadCommand:kUp];
}

- (void)command_down{
    [self.implementor loadCommand:kDown];
}

- (void)command_left{
    [self.implementor loadCommand:kLeft];
    
}

- (void)command_right{
    [self.implementor loadCommand:kRight];
    
}

- (void)command_a{
    [self.implementor loadCommand:kA];
    
}

- (void)command_b{
    [self.implementor loadCommand:kB];
    
}


-(void)loadSystem{
    
}

@end
