//
//  LinkedList.h
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/21.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"

@interface LinkedList : NSObject

@property(nonatomic, strong,readonly) Node *headNode;

@property(nonatomic,readonly) NSInteger *numberOfNodes;


- (void)addItem:(id)item;


@end
