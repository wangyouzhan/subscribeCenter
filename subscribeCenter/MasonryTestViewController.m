//
//  MasonryTestViewController.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/11/4.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "MasonryTestViewController.h"
#import <Masonry.h>

@interface MasonryTestViewController ()

@end

@implementation MasonryTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    UIView *blueView = [[UIView alloc] init];
    
    blueView.backgroundColor = [UIColor blueColor];
    blueView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:blueView];
    
    
    UIView *redView = [[UIView alloc] init];
    redView.backgroundColor = [UIColor redColor];
    redView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:redView];
    
    [blueView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view.mas_left).offset(30);
        make.bottom.equalTo(self.view.mas_bottom).offset(-30);
        make.right.equalTo(redView.mas_left).offset(-30);
        make.height.mas_equalTo(50);
        
    }];
    
    
    
    [redView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.view.mas_right).offset(-30);
        make.bottom.equalTo(blueView.mas_bottom);
        make.height.equalTo(blueView.mas_height);
        make.width.equalTo(blueView.mas_width);
        
    }];
    
    
    UILabel *label1 = [[UILabel alloc] init];
    label1.text = @"第一个label";
    label1.backgroundColor = [UIColor redColor];
    [self.view addSubview:label1];
    
    UILabel *label2 = [[UILabel alloc] init];
    label2.text = @"右边的label";
    [self.view addSubview:label2];
    
    
    [label1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view.mas_top).with.offset(20);
        make.left.equalTo(self.view.mas_left).with.offset(2);
        make.height.equalTo(@40);
        make.width.equalTo(@100);
    }];
    
    
    
    
    
 
    
    
    
    
    
    
    
  
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end







































