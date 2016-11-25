//
//  KVOExampleViewController.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/17.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "KVOExampleViewController.h"
#import "Model.h"

static NSString *SCIENCE = @"science";

@interface KVOExampleViewController ()

@end

@implementation KVOExampleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    //添加用户到指定的订阅中心
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(notificationCenterEvent:)
                                                 name:SCIENCE object:nil];
    
    //发送信息到指定的订阅号中心
    [[NSNotificationCenter defaultCenter] postNotificationName:SCIENCE object:@"V1.0"];
    
    [self.model addObserver:self
                 forKeyPath:@"name"
                    options:NSKeyValueObservingOptionNew
                    context:nil];
    self.model.name = @"wenag1.0";
    
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context{
    
}



- (void)notificationCenterEvent:(id)message{
    
    NSLog(@"%@",message);
}


- (void)dealloc{
    
    [self.model removeObserver:self forKeyPath:@"name"];
    
    [[NSNotificationCenter defaultCenter] removeObserver:self
                                              forKeyPath:@"name"];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
