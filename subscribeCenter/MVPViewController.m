//
//  MVPViewController.m
//  subscribeCenter
//
//  Created by wangyouzhan on 2016/12/26.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "MVPViewController.h"
#import "Presenter.h"
#import "MVPView.h"
#import "MVPModel.h"



@interface MVPViewController ()

@property (nonatomic, strong) Presenter*  presenter;
@property (nonatomic, strong) MVPView*   mvpView;
@property (nonatomic, strong) MVPModel*  mvpModel;


@end

@implementation MVPViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    
    self.presenter = [Presenter new];
    self.mvpView = [MVPView new];
    _mvpView.frame = self.view.bounds;
    [self.view addSubview:_mvpView];
    
    self.mvpModel = [MVPModel new];
    self.mvpModel.content = @"test contet";
    
    _presenter.view = self.mvpView;
    _presenter.model = self.mvpModel;
    
    _mvpView.delegate = _presenter;
    
    [_presenter printTask];
    
}




@end















































