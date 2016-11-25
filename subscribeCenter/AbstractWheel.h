//
//  AbstractWheel.h
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/20.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol AbstractWheel <NSObject>

@required


/**
 轮子

 @param number 轮子
 */
- (void)wheelsNumber:(NSNumber*) number;

/**
 信息
 
 @return 引擎信息
 */
- (NSString *)infomation;




@end
