//
//  Employee.h
//  subscribeCenter
//
//  Created by wangyouzhan on 2016/12/25.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol EmployeePrintDelegate <NSObject>

- (void)printJobDone;

@end


@interface Employee : NSObject

+(instancetype)sharedInstance;

- (void)doPrintJob;


@property(nonatomic, weak) id<EmployeePrintDelegate> delegate;


@end
