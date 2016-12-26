//
//  MVCViewController.m
//  subscribeCenter
//
//  Created by wangyouzhan on 2016/12/25.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "MVCViewController.h"
#import "MVCView.h"
#import "Pager.h"


@interface MVCViewController ()<MVCViewDelegate>

@property(nonatomic, strong) MVCView*  myView;
@property(nonatomic, strong) Pager*  pager;



@end

@implementation MVCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.myView = [MVCView new];
    _myView.delegate = self;
    _myView.frame = self.view.bounds;
    
    [self.view addSubview:_myView];
    
    self.pager = [Pager new];
    self.pager.content = @"wommmamdmmdmmmm";
    
    [self printPaper];
    
    
    
    
    
}


- (void)onPrintBtnClick{
    
    int rand = arc4random() %  10;
    _pager.content = [NSString stringWithFormat:@"line %d", rand];
    NSLog(@"%@", _pager.content);
}

- (void)printPaper
{
    [self.myView printOnView:self.pager];
}


@end



























