//
//  Manager.h
//  subscribeCenter
//
//  Created by wangyouzhan on 2016/12/25.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Manager : NSObject


+(instancetype)sharedInstance;


- (void)celebratePrintDone;


- (void)beginPrintTask;

@end
