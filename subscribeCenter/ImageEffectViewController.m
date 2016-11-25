
//
//  ImageEffectViewController.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/23.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "ImageEffectViewController.h"



@interface ImageEffectViewController ()

@property(nonatomic, strong) UIScrollView *scrollView;

@end

@implementation ImageEffectViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    
    
    //添加显示背景，用以显示动态模糊
    self.scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"s1"]];
    self.scrollView.contentSize = imageView.image.size;
    self.scrollView.bounces = NO;
    [self.scrollView addSubview:imageView];
    [self.view addSubview:self.scrollView];
    
    
    UIVisualEffectView *effectView = [[UIVisualEffectView alloc] initWithEffect:[UIBlurEffect effectWithStyle:UIBlurEffectStyleExtraLight]];
    //设定尺寸
    effectView.frame = CGRectMake(0, 100, 320, 200);
    
    //添加到尺寸
    [self.view addSubview:effectView];
    
    
    UILabel *label = [[UILabel alloc] initWithFrame:effectView.bounds];
    label.text = @"极客学院";
    label.textColor = [UIColor greenColor];
    label.font = [UIFont systemFontOfSize:50.f];
    label.textAlignment  = NSTextAlignmentCenter;
    [effectView.contentView addSubview:label];
    
    UIVisualEffectView *subEffectView = [[UIVisualEffectView alloc] initWithEffect:[UIVibrancyEffect effectForBlurEffect:(UIBlurEffect*)effectView.effect]];
    
    subEffectView.frame = effectView.bounds;
    
    [effectView.contentView addSubview:subEffectView];
    
    [subEffectView.contentView addSubview:label];
    
    
}


- (void)startProgress{
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
