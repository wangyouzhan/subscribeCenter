//
//  CopyFuncViewController.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/17.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "CopyFuncViewController.h"
#import "StudentTwoModel.h"

@interface CopyFuncViewController ()

@end

@implementation CopyFuncViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    StudentTwoModel *stu1 = [[StudentTwoModel alloc] init];
    stu1.name = @"小明";
    
    StudentTwoModel *stu2 = stu1.copy;
    NSLog(@"%@",stu2.name);

    
    
    
    
    NSLog(@"%@------%@",stu1,stu2);
    
    
    
    
    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
