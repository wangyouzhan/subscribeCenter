//
//  MementoCenterProtocol.h
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/20.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MementoCenterProtocol <NSObject>


@required


/**
 current state

 @return object
 */
- (id)currentState;



/**
 recover from state

 @param state state
 */
- (void)recoverFromState:(id)state;



@end
