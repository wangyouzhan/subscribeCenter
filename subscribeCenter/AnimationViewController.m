
//
//  AnimationViewController.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/23.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "AnimationViewController.h"
#import "LineView.h"
#import "LineViewTwo.h"


@interface AnimationViewController ()

@property(nonatomic, strong) UIView *lineView;
@property(nonatomic, strong) LineView *lineViewNew;
@property(nonatomic, strong) LineViewTwo *lineViewTwo;

@end

@implementation AnimationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    //初始化view
//    self.lineView = [[UIView alloc] initWithFrame:CGRectMake(10, 100, 100, 3)];
//    self.lineView.backgroundColor = [UIColor blackColor];
//    self.lineView.alpha = 0.f;
//    [self.view addSubview:self.lineView];
//    
//    //延时2秒执行持续时间为1秒的动画
//   [UIView animateWithDuration:1 delay:2 options:UIViewAnimationOptionLayoutSubviews animations:^{
//       self.lineView.alpha = 1.f;
//       self.lineView.frame = CGRectMake(10 + 50, 100, 100, 3);
//       
//   } completion:^(BOOL finished) {
//       
//   }];
//    
//    //延时6秒执行持续时间为1秒的动画
//    [UIView animateWithDuration:1 delay:6 options:UIViewAnimationOptionLayoutSubviews animations:^{
//        self.lineView.alpha = 0.f;
//        self.lineView.frame = CGRectMake(10 + 50 + 50, 100, 100, 3);
//    } completion:^(BOOL finished) {
//    
//    }];
    

//    self.lineViewNew = [[LineView alloc] initWithFrame:CGRectMake(10, 200, 100, 3)];
//    self.lineViewNew.offsetX = 50.f;
//    self.lineViewNew.backgroundColor = [UIColor blueColor];
//    [self.view addSubview:self.lineViewNew];
//    [self.lineViewNew show];
//    [self performSelector:@selector(executeAfterDelay) withObject:nil afterDelay:6];

    self.lineViewTwo = [[LineViewTwo alloc] initWithFrame:CGRectMake(10, 100, 100, 3)];
    self.lineViewTwo.backgroundColor = [UIColor redColor];
    self.lineViewTwo.offsetX = 50;
    [self.lineViewTwo buildView];
    [self.view addSubview:self.lineViewTwo];
    
    [self.lineViewTwo showWithDuration:1.f animated:YES];
    
    [self performSelector:@selector(delayShow)
               withObject:nil
               afterDelay:6];
    
    
    [self performSelector:@selector(delayHide) withObject:nil afterDelay:4];
    
    [self.lineViewTwo percent:1.f];
    
}

- (void)delayShow{
    [self.lineViewTwo showWithDuration:1.f animated:YES];
}

- (void)delayHide{
    [self.lineViewTwo hideWithDuration:1.f animated:YES];
}

- (void)executeAfterDelay{
    [self.lineViewNew hide];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
