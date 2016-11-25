//
//  Node.h
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/21.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject


@property(nonatomic, strong) Node *nextNode;

@property(nonatomic, weak) id item;



/**
 遍历初始化方法

 @param item <#item description#>

 @return <#return value description#>
 */
+ (instancetype)nodeWithItem:(id)item;






@end
