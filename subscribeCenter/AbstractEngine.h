//
//  AbstractEngine.h
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/20.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol AbstractEngine <NSObject>

@required


/**
 引擎的尺寸

 @param scale 尺寸
 */
- (void)engineScale:(CGFloat)scale;



/**
 引擎的重量

 @param kg 重量
 */
- (void)engineWeight:(CGFloat)kg;



/**
 信息

 @return 引擎信息
 */
- (NSString *)infomation;





@end
