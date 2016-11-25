
//
//  IterotorViewController.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/21.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "IterotorViewController.h"
#import "LinkedList.h"
#import "Wang.h"
#import "LinkedListIterator.h"
#import "Node.h"
#import "CustomView.h"

@interface IterotorViewController ()

@property(nonatomic, strong) LinkedList *list;

@end

@implementation IterotorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    CustomView *customView = [[CustomView alloc] initWithFrame:self.view.bounds];
    
    Node *node = nil;
    while (node = [customView nextObject]) {
        NSLog(@"%@----", node.item);
    }
    
    
//    Wang *wang = [[Wang alloc] init];
//    
//    NSArray *data = @[@"a",@"B",@"C"];
//    
//    NSEnumerator *iterator = [data objectEnumerator];
//    
//    id arrayObj = nil;
//    while (arrayObj = [iterator nextObject]) {
//        NSLog(@"%@", arrayObj);
//    }
//    
//    // 创建集合对象
//    self.list = [[LinkedList alloc] init];
//    [self.list addItem:@"A"];
//    [self.list addItem:@"B"];
//    [self.list addItem:@"C"];
//    [self.list addItem:@"D"];
//    
//    
//    LinkedListIterator *linkedIterator = [LinkedListIterator linkedListIteratorWithLinkedList:self.list];
//    
//    Node *node = nil;
//    while (node = [linkedIterator nextObject]) {
//        NSLog(@"%@", node.item);
//    }
//    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
