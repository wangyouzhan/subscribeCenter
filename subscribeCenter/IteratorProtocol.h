//
//  IteratorProtocol.h
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/21.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol IteratorProtocol <NSObject>

@required


- (id)nextObject;

- (void)resetIterator;

@end
