//
//  ColorViewController.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/27.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "ColorViewController.h"
#import "ColorUiImageView.h"

@interface ColorViewController ()

@property (nonatomic,strong) ColorUiImageView *colorImageView;

@end

@implementation ColorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.colorImageView = [[ ColorUiImageView alloc] initWithFrame:CGRectMake(0, 0, 300, 500)];
    self.colorImageView.center = self.view.center;
    self.colorImageView.image = [UIImage imageNamed:@"s1"];
    [self.view addSubview:self.colorImageView];
    
    
    [self performSelector:@selector(event) withObject:nil afterDelay:2.f];
    
    
}

- (void)event{
    self.colorImageView.direction = UP;
    self.colorImageView.percent = 0.5;
    self.colorImageView.color = [UIColor cyanColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end










































