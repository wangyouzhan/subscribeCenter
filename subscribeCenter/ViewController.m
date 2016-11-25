//
//  ViewController.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/17.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "ViewController.h"
#import "SubscriptionServiceCenter.h"
#import "SubcriptionServiceCenterProtocal.h"

static NSString *SCIENCE = @"science";


@interface ViewController ()<SubcriptionServiceCenterProtocal>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //创建订阅号
    [SubscriptionServiceCenter createSubscriptionNumber:SCIENCE];

    //添加订阅用户到指定刊物
    [SubscriptionServiceCenter addCustomer:self withSubscriptionNumber:SCIENCE];
    [SubscriptionServiceCenter sendMessage:@"V1.0" toSubscriptionNumber:SCIENCE];
    
    [[self view] setBackgroundColor:[UIColor greenColor]];
    
}


-(void)subscriptionMessage:(id)message subscriptionNumber:(NSString *)subscriptionNumber
{
    NSLog(@"%@----%@", message,subscriptionNumber);
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
