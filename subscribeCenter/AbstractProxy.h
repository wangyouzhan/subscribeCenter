//
//  AbstractProxy.h
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/19.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AbstractProxy : NSProxy

//代理对象
@property(nonatomic, weak) id delegate;



@end
