
//
//  ProgViewController.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/27.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "ProgViewController.h"
#import "ProgressView.h"

@interface ProgViewController ()

@property (nonatomic, strong) ProgressView *progressView;
@property (nonatomic, strong) NSTimer *timer;

@end

@implementation ProgViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.view.backgroundColor = [UIColor blackColor];
    
    self.progressView = [[ ProgressView alloc] initWithFrame:CGRectMake(20, 20, 290, 7)];
    self.progressView.layer.borderWidth = 1.f;
    self.progressView.layer.borderColor = [UIColor cyanColor].CGColor;
//    self.progressView.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:self.progressView];
    
    
    [self performSelector:@selector(layerAnimation)
               withObject:nil
               afterDelay:3.f];
    
   self.timer = [NSTimer scheduledTimerWithTimeInterval:1.f
                                                 target:self
                                               selector:@selector(layerAnimation)
                                               userInfo:nil
                                                repeats:YES];
    
    
}

- (void)layerAnimation{
    
    self.progressView.progress = (arc4random() % 100 / 100.f);
    
//    self.progressView.layer.frame = CGRectMake(20, , 50, 3);
//    self.progressView.progress = 0.2f;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
