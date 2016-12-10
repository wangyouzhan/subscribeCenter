//
//  NetHttpViewController.m
//  subscribeCenter
//
//  Created by wangyouzhan on 2016/12/10.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "NetHttpViewController.h"

@interface NetHttpViewController ()

@end

@implementation NetHttpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIWebView *webView = [[UIWebView alloc] init];
    webView.frame = self.view.bounds;
    [self.view addSubview:webView];
    
    
    NSURL *url = [NSURL URLWithString:@"http://www.imooc.com"];
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:url];
    [webView loadRequest:request];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end







































