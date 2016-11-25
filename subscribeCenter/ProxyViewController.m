//
//  ProxyViewController.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/19.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "ProxyViewController.h"
#import "ConcreteProxy.h"
#import "MessageProtocol.h"

@interface ProxyViewController ()<MessageProtocol>

@end

@implementation ProxyViewController


-(void)helloWorld{
    NSLog(@"xxxxxxxxx");
}

- (void)viewDidLoad {
    [super viewDidLoad];
   
    ConcreteProxy *proxy = [ConcreteProxy alloc];
    proxy.delegate =  self;
    
    [proxy helloWorld];

    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
