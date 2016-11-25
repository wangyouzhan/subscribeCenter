//
//  LinkedListIterator.h
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/21.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LinkedList.h"
#import "IteratorProtocol.h"

@interface LinkedListIterator : NSObject <IteratorProtocol>
    


/**
 遍历构造器

 @param linkedList 链表

 @return 迭代器
 */
+ (instancetype)linkedListIteratorWithLinkedList:(LinkedList *)linkedList;


@end
