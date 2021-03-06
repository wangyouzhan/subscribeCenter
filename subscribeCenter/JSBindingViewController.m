//
//  JSBindingViewController.m
//  subscribeCenter
//
//  Created by wangyouzhan on 2016/12/10.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "JSBindingViewController.h"
#import <JavaScriptCore/JavaScriptCore.h>

@interface JSBindingViewController ()

@end

@implementation JSBindingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    JSContext *context = [[JSContext alloc] init];
    
    context.exceptionHandler = ^(JSContext *ctx, JSValue *exception){
        NSLog(@"%@", exception);
    };
    
    NSString *script;
    JSValue *result;
    
    script = @"1 + 2 + 3";
    result = [context evaluateScript:script];
    NSLog(@"%@ = %f", script, [result toDouble]);
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 20, 100, 40)];
    label.textAlignment = NSTextAlignmentCenter;
    label.text = [NSString stringWithFormat:@"%f", [result toDouble]];
    label.backgroundColor = [UIColor greenColor];
    [self.view addSubview:label];
    
    
    
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    UIAlertController *ac = [UIAlertController alertControllerWithTitle:@"ddd" message:@"women" preferredStyle:UIAlertControllerStyleActionSheet];
    
    UIAlertAction *action1 = [UIAlertAction actionWithTitle:@"删除" style:UIAlertActionStyleDefault handler:nil ];
    
    UIAlertAction *action2 = [UIAlertAction actionWithTitle:@"删除" style:UIAlertActionStyleDefault handler:nil ];
    UIAlertAction *action3 = [UIAlertAction actionWithTitle:@"删除" style:UIAlertActionStyleCancel handler:nil ];

    
    [ac addAction:action1];
    [ac addAction:action2];
    [ac addAction:action3];
    
    
    
    [self presentViewController:ac animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
























