
//
//  JsonViewController.m
//  subscribeCenter
//
//  Created by wangyouzhan on 2016/12/8.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "JsonViewController.h"

@interface JsonViewController ()

@property(nonatomic, strong) UITextView *textView;

@end

@implementation JsonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 100, 100, 30);
    btn.backgroundColor = [UIColor greenColor];
    [btn setTitle:@"json parse" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(clickParse) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    
    self.textView = [[UITextView alloc] initWithFrame:CGRectMake(100, 140, 200, 60)];
    self.textView.backgroundColor = [UIColor greenColor];
    self.textView.scrollEnabled = NO;
    self.textView.editable = YES;
    [self.textView setFont:[UIFont fontWithName:@"Arial" size:18.0]];
    [self.textView setReturnKeyType:UIReturnKeyDefault];
    [self.textView setKeyboardType:UIKeyboardTypeDefault];
    [self.textView setTextAlignment:NSTextAlignmentCenter];
    [self.textView setDataDetectorTypes:UIDataDetectorTypeAll];
    [self.textView setTextColor:[UIColor redColor]];
    [self.view addSubview:self.textView];
    
}


- (void)clickParse{
    
    
    NSString *jsonStr = @"{\"name\":\"Jsames\",\"age\":\"30\"}";
    NSString *jsonArray = @"[{\"name\":\"wang\",\"age\":\"23\"},{\"name\":\"wangd\",\"age\":\"23\"}]";
    
     NSString *jsonArray2 = @"{\"user\":[{\"name\":\"wang\",\"age\":\"23\"},{\"name\":\"wangd\",\"age\":\"23\"}]}";
    
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"json" ofType:nil];
    NSFileManager *fileMgr = [NSFileManager defaultManager];
    if ([fileMgr fileExistsAtPath:filePath]) {
        jsonStr = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil];
    }else{
        self.textView.text = @"文件没找到";
    }
    
    
    NSData *jsonData = [jsonStr dataUsingEncoding:NSUTF8StringEncoding];
    id jsonObj = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingAllowFragments error:nil];
    
    if ([jsonObj isKindOfClass:[NSDictionary class]]) {
        //字典类型
        NSDictionary *dic = (NSDictionary*)jsonObj;
//         self.textView.text = [dic objectForKey:@"name"];
        
//        NSArray *temp = [dic objectForKey:@"weatherinfo"];
        NSDictionary *temp = [dic objectForKey:@"weatherinfo"];
        
        self.textView.text = [temp objectForKey:@"city"];
        
//        for (NSDictionary *p in temp) {
//            self.textView.text = [p objectForKey:@"city"];
//        }
        
    
//        dispatch_async(dispatch_get_main_queue(), ^{
//            self.textView.text = [[dic objectForKey:@"name"] stringByAppendingString:@"wnag300000"];
//        });

    }
    if ([jsonObj isKindOfClass:[NSArray class]]) {
        //数组
        NSArray *arr = (NSArray*)jsonObj;
        for(NSDictionary *dic in arr){
            self.textView.text = [dic objectForKey:@"name"];
        }
    }
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end









































