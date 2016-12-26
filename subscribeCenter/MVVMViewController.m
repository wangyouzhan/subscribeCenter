//
//  MVVMViewController.m
//  subscribeCenter
//
//  Created by wangyouzhan on 2016/12/26.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "MVVMViewController.h"
#import "MVVMPaper.h"
#import "MVVMView.h"
#import "MVVMViewModel.h"



@interface MVVMViewController ()

@property (nonatomic, strong) MVVMPaper*    paper;
@property (nonatomic, strong) MVVMView*   mvvmView;
@property (nonatomic, strong) MVVMViewModel*   viewModel;

@end

@implementation MVVMViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.paper = [MVVMPaper new];
    _paper.content = @"line 0";
    self.viewModel = [MVVMViewModel new];
    self.viewModel.contentStr = @"test";
    
    self.mvvmView = [MVVMView new];
    _mvvmView.frame = self.view.bounds;
    [self.view addSubview:_mvvmView];

    [_mvvmView setWithViewModel:_viewModel];
    [_viewModel setWithModel:_paper];
    
}


@end
























