//
//  GBAImplementor.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/19.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "GBAImplementor.h"

@implementation GBAImplementor


-(void)loadCommand:(EcommandType)type{
    
    switch (type) {
        case kUp:
            NSLog(@"GBA up");
            break;
        case kDown:
            NSLog(@"GBA down");
            break;

        case kLeft:
            NSLog(@"GBA kleft");
            break;
        case kRight:
            NSLog(@"GBA kright");
            break;
        case kA:
            NSLog(@"GBA ka");
            break;
        case kB:
            NSLog(@"GBA kb");
            break;
            
        default:
            break;
    }
    
    
}

@end
