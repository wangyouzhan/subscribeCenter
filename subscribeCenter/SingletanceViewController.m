//
//  SingletanceViewController.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/19.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "SingletanceViewController.h"
#import "UserInfoManagerCenter.h"
#import "StoreValue.h"
#import "FastCoder.h"
#import "StudentThreeModel.h"
#import "InfoModel.h"
#import "NSObject+StoreValue.h"

@interface SingletanceViewController ()

@end

@implementation SingletanceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
//    UserInfoManagerCenter *center = [UserInfoManagerCenter managerCenter];
//    
//    NSLog(@"%@--------------------", [center name]);
//    
//    NSLog(@"%@",[UserInfoManagerCenter managerCenter]);
//    NSLog(@"%@", [[UserInfoManagerCenter alloc] init]);

//    NSData *data = [FastCoder dataWithRootObject:@"wang"];
//    NSLog(@"------%@",data);
//    NSLog(@"-------%@",[FastCoder objectWithData:data]);
    
    
    //fastCoder保存普通的数组
    [[StoreValue sharedInstance] storeValue:@{@"A":@"B"} withKey:@"fastCoding"];
    NSLog(@"------%@---------------", [[StoreValue sharedInstance] valueWithKey:@"fastCoding"]);
    
    StudentThreeModel *student = [[StudentThreeModel alloc] init];
    student.name = @"A";
    NSArray *array = @[[InfoModel new],[InfoModel new],[InfoModel new],[InfoModel new]];
    student.datas = array;
    
//    [[StoreValue sharedInstance] storeValue:student withKey:@"fast"];
//    StudentThreeModel *tempStudent = [[StoreValue sharedInstance] valueWithKey:@"fast"];
   
    [student storeValueWithKey:@"fasttest"];
    StudentThreeModel *tempStudent = [StudentThreeModel valueByKey:@"fasttest"];
    
    
    NSLog(@"%@", tempStudent.name);
    NSLog(@"%@", tempStudent.datas);
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end















