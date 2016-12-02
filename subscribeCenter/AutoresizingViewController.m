//
//  WindowViewController.m
//  subscribeCenter
//
//  Created by wangyouzhan on 2016/12/1.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "AutoresizingViewController.h"

@interface AutoresizingViewController ()

@end

@implementation AutoresizingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //视图
    UIView *view1 = [[UIView alloc] init];
    //位置大小
    view1.frame = CGRectMake(10, 30, 355, 627);
    //背景颜色
    view1.backgroundColor = [UIColor redColor];
    //将视图添加window上
    [self.view addSubview:view1];
    
    //父视图
    UIView *superView = view1.superview;
    superView.backgroundColor = [UIColor greenColor];
    
    //坐标是根据父视图的位置来设置的不会跨层
    UIView *view2 = [[UIView alloc] init];
    view2.frame = CGRectMake(10, 100, 200, 50);
    view2.backgroundColor = [UIColor blackColor];
    //唯一标识
    view2.tag = 2;
    [view1 addSubview:view2];
    
    
    UIView *view3 = [[UIView alloc] init];
    view3.frame  = CGRectMake(20, 100, 100, 100);
    view3.backgroundColor = [UIColor purpleColor];
    view3.tag = 3;
    [view1 addSubview:view3];
    
    //子视图
    NSArray *subViewArray = view1.subviews;
    for (UIView *view in subViewArray) {
        if (view.tag == 2) {
            view.backgroundColor = [UIColor whiteColor];
        }
    }
    
    //通过tag值得到对应的子视图
    UIView *subView = [view1 viewWithTag:3];
    subView.backgroundColor = [UIColor orangeColor];
    
    //1.同一个父视图中先加入的View会被盖在下面
    //2.子视图是随父视图进行层级遮挡，如果父视图层级低于其他同级视图，则父视图的子视图也会被盖住
    UIView *view4 = [[UIView alloc] init];
    view4.frame = CGRectMake(10, 100, 300, 10);
    view4.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:view4];
    
    //交换两个层的视图
    [view1 exchangeSubviewAtIndex:0 withSubviewAtIndex:1];
    
    //插入一个视图到指定层
    UIView *view5 = [[UIView alloc] init];
    view5.frame = CGRectMake(7, 80, 200, 200);
    view5.backgroundColor = [UIColor blackColor];
    [view1 insertSubview:view5 atIndex:5];
    
    [view1 bringSubviewToFront:view3];
    [view1 sendSubviewToBack:view4];
    
    //自适应---这个可以学会，挺好的
    UIView *backView = [[UIView alloc] init];
    backView.frame = CGRectMake([UIScreen mainScreen].bounds.size.width / 2 -25, 400, 50, 50);
    backView.backgroundColor = [UIColor orangeColor];
    backView.tag = 1001;
    //准许子视图自适应
    backView.autoresizesSubviews = YES;
    [view1 addSubview:backView];
    
    UIView *topView = [[UIView alloc] init];
    topView.frame = CGRectMake(10, 10, 30, 30);
    topView.backgroundColor = [UIColor greenColor];
//    topView.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin
//    | UIViewAutoresizingFlexibleRightMargin
//    | UIViewAutoresizingFlexibleTopMargin
//    | UIViewAutoresizingFlexibleBottomMargin;
    
    topView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    
    [backView addSubview:topView];
    
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    btn.frame = CGRectMake(10, 550, 355, 30);
    btn.backgroundColor = [UIColor blackColor];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [view1 addSubview:btn];

    
    /**
     *   3GS 3.5寸  320*480 @1x
     *   4/4s 3.5寸   320*480 @2x 640*960
     *   5/5c/5s 4.0寸  320*568 @2x 640*1136
     *   6 4.7寸  375*667 @2x  750*1344
     *   6Plus 5.5寸  414*736 @3x  1242*2208
     */
    
    
    NSLog(@"w:%f h:%f",[[UIScreen mainScreen] bounds].size.width,[[UIScreen mainScreen] bounds].size.height);
    
    NSLog(@"frame-- x:%f y:%f w:%f h:%f", view1.frame.origin.x,view1.frame.origin.y
          ,view1.frame.size.width, view1.frame.size.height);
    NSLog(@"bound-- x:%f y:%f w:%f h:%f", view1.bounds.origin.x, view1.bounds.origin.y,view1.bounds.size.width, view1.bounds.size.height);

}

- (void)btnClick{
    
    UIView *view = [self.view viewWithTag:1001];
    view.frame = CGRectMake(view.frame.origin.x - 5, view.frame.origin.y - 5, view.frame.size.width + 10, view.frame.size.height + 10);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
    
    
}



@end



























