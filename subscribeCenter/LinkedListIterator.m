//
//  LinkedListIterator.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/21.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "LinkedListIterator.h"

@interface LinkedListIterator ()

@property(nonatomic, strong) LinkedList *linkedList;
@property(nonatomic, strong) Node   *currentNode;


@end



@implementation LinkedListIterator

+(instancetype)linkedListIteratorWithLinkedList:(LinkedList *)linkedList{
    
    LinkedListIterator *linkedListIterator = [LinkedListIterator new];
    
    linkedListIterator.linkedList  = linkedList;
    linkedListIterator.currentNode = linkedList.headNode;
    
    return linkedListIterator;
}

-(id)nextObject{
    
    self.currentNode = self.currentNode.nextNode;
    return self.currentNode;
}


- (void)resetIterator{
    
}

@end
