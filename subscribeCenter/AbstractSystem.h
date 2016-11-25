//
//  AbstractSystem.h
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/19.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AbstractImplementor.h"


@interface AbstractSystem : NSObject


@property(nonatomic,strong)AbstractImplementor *implementor;


- (void)command_up;
- (void)command_down;
- (void)command_left;
- (void)command_right;
- (void)command_a;
- (void)command_b;

- (void)loadSystem;

@end











