//
//  StackViewController.m
//  subscribeCenter
//
//  Created by wangyouzhan on 2016/12/11.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "StackViewController.h"

@interface StackViewController ()

@end

@implementation StackViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIStackView *stackView = [[UIStackView alloc] initWithFrame:CGRectMake(50, 50, 200, 50)];
    stackView.axis = UILayoutConstraintAxisHorizontal;
    [self.view addSubview:stackView];
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
    imageView.image = [UIImage imageNamed:@"activity_hot_active"];
    [stackView addArrangedSubview:imageView];
    
    
    //子stackView
    UIStackView *stackviewsub = [[UIStackView alloc] initWithFrame:CGRectMake(0, 0, 150, 50)];
    stackviewsub.axis = UILayoutConstraintAxisVertical;
    stackviewsub.alignment = UIStackViewAlignmentLeading;
    UIImageView *imageView2 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 38, 10)];
    imageView2.image = [UIImage imageNamed:@"activity_hot_active"];
    
    

    
}



@end














