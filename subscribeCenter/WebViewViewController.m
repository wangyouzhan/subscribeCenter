//
//  WebViewViewController.m
//  subscribeCenter
//
//  Created by wangyouzhan on 2016/12/11.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "WebViewViewController.h"

#define kScreenWidth  [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height

@interface WebViewViewController ()<UISearchBarDelegate>

@end

@implementation WebViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view setBackgroundColor:[UIColor colorWithRed:0.776 green:0.776 blue:0.8 alpha:1.0]];
    
    _searchBar = [[UISearchBar alloc] initWithFrame:CGRectMake(15, 34, self.view.frame.size.width - 15 * 2 - 60, 44)];
    _searchBar.placeholder = @"http://www.baidu.com";
    _searchBar.backgroundColor = [UIColor clearColor];
    _searchBar.delegate = self;
    [self.view addSubview:_searchBar];
    
    _searchButton = [[UIButton alloc] initWithFrame:CGRectMake(_searchBar.frame.origin.x + _searchBar.frame.size.width + 10, 41, 60, 30)];
    [_searchButton setTitle:@"搜索" forState:UIControlStateNormal];
    [_searchButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    _searchButton.layer.cornerRadius = 5.0;
    _searchButton.layer.borderColor = [UIColor blackColor].CGColor;
    _searchButton.layer.borderWidth = 1.0;
    _searchButton.backgroundColor = [UIColor clearColor];
    [_searchButton addTarget:self action:@selector(searchAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_searchButton];
    
    _webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 85, self.view.frame.size.width, self.view.frame.size.height - 86)];
    _webView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:_webView];
    

}

- (void)searchAction:(id)sender{
    NSLog(@"searchAction....");
    
    NSString *urlText = [_searchBar text];
    NSURL *url = [NSURL URLWithString:urlText];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [_webView loadRequest:request];
    
}


-(void)searchBarSearchButtonClicked:(UISearchBar *)searchBar{
    
    [_searchBar resignFirstResponder];
    
    NSLog(@"earbarsearbuttonclicked");
    
    NSString *urlText = [_searchBar text];
    NSURL *url = [NSURL URLWithString:urlText];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [_webView loadRequest:request];

}


@end





















