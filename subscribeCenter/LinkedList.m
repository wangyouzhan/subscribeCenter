//
//  LinkedList.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/21.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "LinkedList.h"

@interface LinkedList ()

@property(nonatomic, strong) Node *headNode;

@property(nonatomic) NSInteger *numberOfNodes;


- (void)addItem:(id)item;


@end


@implementation LinkedList


-(instancetype)init{
    self = [super init];
    if (self) {
        self.headNode = [Node new];
    }
    return self;
}

- (void)addItem:(id)item{
    
    if (self.headNode == nil) {
        
        self.headNode = [Node nodeWithItem:item];
        
    }else{
        
        [self addItem:item node:self.headNode];
    }
    
}

#pragma mark -


- (void)addItem:(id)item node:(Node *)node{
    
    if (node.nextNode == nil) {
        
        node.nextNode = [Node nodeWithItem:item];
    }else{
        
        [self addItem:item node:node.nextNode];
    }
    
}



@end
