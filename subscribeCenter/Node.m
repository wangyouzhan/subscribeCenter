//
//  Node.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/21.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "Node.h"

@implementation Node


+(instancetype)nodeWithItem:(id)item{
    
    Node *node = [[[self class] alloc] init];
    node.item = item;
    
    return node;
}



@end
