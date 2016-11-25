//
//  CustomeViewController.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/19.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "CustomeViewController.h"
#import "Customer.h"
#import "TCPProtocol.h"

@interface CustomeViewController () <CustomerDelegate>

@property(nonatomic) NSInteger sourcePort;
@property(nonatomic) NSInteger destinationPort;

@end

@implementation CustomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    Customer *customer = [[Customer alloc] init];
    customer.delegate = self;
    
    [customer buyItemCount:5];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)customer:(Customer *)customer buyItemCount:(NSInteger)count{
    
    NSLog(@"%ld", (long)count);
    
}


- (void)accessTCPData:(id<TCPProtocol>)data{
    
    self.sourcePort = [data sourcePort];
    self.destinationPort = [data destinationPort];
    
    
}

@end




























