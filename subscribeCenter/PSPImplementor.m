//
//  PSPImplementor.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/19.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "PSPImplementor.h"

@implementation PSPImplementor

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
        case kX:
            NSLog(@"GBA kx");
            break;
        case kO:
            NSLog(@"GBA ko");
            break;
            
        default:
            break;
    }
    

}

@end
