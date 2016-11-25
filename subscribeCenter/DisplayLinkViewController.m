
//
//  DisplayLinkViewController.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/24.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "DisplayLinkViewController.h"

@interface DisplayLinkViewController ()

@property(nonatomic, strong) CADisplayLink *displayLink;
@property(nonatomic) NSInteger count;


@end

@implementation DisplayLinkViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.displayLink = [CADisplayLink displayLinkWithTarget:self selector:@selector(displayLinkEvent:)];
    
   
    [self performSelector:@selector(eventOne) withObject:nil afterDelay:1];
    [self performSelector:@selector(eventTwo) withObject:nil afterDelay:2];
    
    
}

- (void)displayLinkEvent:(id)object{
    
    self.count ++;
    NSLog(@"-----------%ld", (long)self.count);
    
}


- (void)eventOne{
    
    [self.displayLink addToRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];
}

- (void)eventTwo{
    [self.displayLink invalidate];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
























