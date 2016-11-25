//
//  TCPProtocol.h
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/19.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TCPProtocol <NSObject>

@required

- (NSInteger)sourcePort;

- (NSInteger)destinationPort;



@end
