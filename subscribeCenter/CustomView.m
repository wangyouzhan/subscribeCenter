
//
//  CustomView.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/21.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "CustomView.h"
#import "LinkedList.h"
#import "Node.h"


@interface CustomView ()

@property (nonatomic, strong) UIButton *button;
@property (nonatomic, strong) UILabel  *label;
@property (nonatomic, strong) UITextField *field;

@property (nonatomic, strong) LinkedList *list;
@property (nonatomic,strong) Node *currentNode;

@end



@implementation CustomView


-(instancetype)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {
        self.button = [[UIButton alloc] initWithFrame:self.bounds];
        self.label = [[UILabel alloc] initWithFrame:self.bounds];
        self.field = [[UITextField alloc] initWithFrame:self.bounds];
    
        [self addSubview:self.button];
        [self addSubview:self.label];
        [self addSubview:self.field];
        
        
        self.list = [[LinkedList alloc] init];
        [self.list addItem:self.button];
        [self.list addItem:self.label];
        [self.list addItem:self.field];
        
        
        self.currentNode = self.list.headNode;
        
    }
    
    return self;
    
}


-(id)nextObject{
    self.currentNode = self.currentNode.nextNode;
    return self.currentNode;
}

-(void)resetIterator{
    
    self.currentNode = self.list.headNode;
}



@end
