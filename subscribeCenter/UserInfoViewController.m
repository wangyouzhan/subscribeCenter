//
//  UserInfoViewController.m
//  subscribeCenter
//
//  Created by wangyouzhan on 2016/12/10.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "UserInfoViewController.h"

#define kScreenWidth [[UIScreen mainScreen] bounds].size.width
#define kScreenHeight [[UIScreen mainScreen] bounds].size.height

//第一步：布局页面
//第二步：网络请求信息
//第三步：渲染页面

@interface UserInfoViewController ()<NSURLConnectionDataDelegate>

@property(nonatomic, strong) UILabel *phoneLabel;
@property(nonatomic, strong) UITextField *phoneTextField;


@end

@implementation UserInfoViewController


-(void)viewDidLoad{
    
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 40, kScreenWidth, 20)];
    [titleLabel setText:@"个人用户信息"];
    titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.font = [UIFont systemFontOfSize:18];
    titleLabel.backgroundColor = [UIColor clearColor];
    [self.view addSubview:titleLabel];
    
    
    //用户名控件
    _userNameView = [[KeyValueView alloc] initWithFrame:CGRectMake(100, 70, kScreenWidth - 100 * 2, 30)];
    _userNameView.backgroundColor = [UIColor clearColor];
    [self.view addSubview:_userNameView];
    
    //用户性别控件
    _userSexView = [[KeyValueView alloc] initWithFrame:CGRectMake(100, 70 + 30, kScreenWidth - 100 * 2, 30)];
    _userNameView.backgroundColor = [UIColor clearColor];
    [self.view addSubview:_userSexView];
    
    //年龄
    _birthdayView = [[KeyValueView alloc] initWithFrame:CGRectMake(100, 70 + 30 * 2, kScreenWidth - 100 * 2, 30)];
    _birthdayView.backgroundColor = [UIColor clearColor];
    [self.view addSubview:_birthdayView];
    
    //邮箱
    _emailView = [[KeyValueView alloc] initWithFrame:CGRectMake(100, 70 + 30 * 3, kScreenWidth - 100 * 2, 30)];
    _emailView.backgroundColor = [UIColor clearColor];
    [self.view addSubview:_emailView];
    
    //手机
//    _phoneView = [[KeyValueView alloc] initWithFrame:CGRectMake(100, 70 + 30 * 4, kScreenWidth - 100 * 2, 30)];
//    _phoneView.backgroundColor = [UIColor clearColor];
//    [self.view addSubview:_phoneView];
    
    
    _phoneLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 70 + 30 * 4, (kScreenWidth - 100 * 2)/3, 30)];
    _phoneLabel.backgroundColor = [UIColor clearColor];
    _phoneLabel.textAlignment = NSTextAlignmentCenter;
    _phoneLabel.font = [UIFont systemFontOfSize:16];
    _phoneLabel.textColor = [UIColor blackColor];
    [self.view addSubview:_phoneLabel];
    
    _phoneTextField = [[UITextField alloc] initWithFrame:CGRectMake( 100 + (kScreenWidth - 100 * 2)/3, 70 + 30 * 4, 2 * (kScreenWidth - 100 * 2) * 2 / 3, 30)];
    _phoneTextField.backgroundColor = [UIColor clearColor];
    _phoneTextField.textAlignment = NSTextAlignmentCenter;
    _phoneTextField.font = [UIFont systemFontOfSize:16];
    _phoneTextField.textColor = [UIColor blackColor];
    _phoneTextField.keyboardType = UIKeyboardTypeNumberPad;
    [self.view addSubview:_phoneTextField];

    
    UIButton *getUserInfoButton = [[UIButton alloc] initWithFrame:CGRectMake(100, 70 + 30 * 5, kScreenWidth - 100 * 2, 30)];
    getUserInfoButton.backgroundColor = [UIColor redColor];
    [getUserInfoButton setTitle:@"GetRequest" forState:UIControlStateNormal];
    [getUserInfoButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [getUserInfoButton addTarget:self action:@selector(loadWebRequest) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:getUserInfoButton];
    
    
    UIButton *saveUserInfo = [[UIButton alloc] initWithFrame:CGRectMake(100, 70 + 30 * 6 + 10, kScreenWidth - 100 * 2, 30)];
    saveUserInfo.backgroundColor = [UIColor redColor];
    [saveUserInfo setTitle:@"save userinfo" forState:UIControlStateNormal];
    [saveUserInfo setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [saveUserInfo addTarget:self action:@selector(saveRequest) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:saveUserInfo];
    
    
}


- (void)saveRequest{
    
    
    
}

- (void)loadWebRequest{
    
    NSURL *url = [NSURL URLWithString:@"http://v.juhe.cn/toutiao/index?type=shehui&key=d904a524b2822f6191ec745995e67f16"];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    NSURLSession *session = [NSURLSession sharedSession];
    

    NSURLSessionDataTask *sessionDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
//        NSString *result = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        
//        NSLog(@"%@", result);
        NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *)response;
        NSInteger status = [httpResponse statusCode];
        
        
        
        id obj = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
    
        if ([obj isKindOfClass:[NSDictionary class]]) {
            id dataResult = [obj objectForKey:@"result"];
            if ([dataResult isKindOfClass:[NSDictionary class]]) {
                id dataArr = [dataResult objectForKey:@"data"];
                if ([dataArr isKindOfClass:[NSArray class]]) {
                    NSDictionary *dataObj = (NSDictionary*)[dataArr objectAtIndex:0];
                    NSLog(@"%@", [dataObj objectForKey:@"title"]);
                    [self.userNameView setupKey:@"title" value:[dataObj objectForKey:@"title"]];
                    [self.userSexView setupKey:@"date" value:[dataObj objectForKey:@"date"]];
                    
                    [self.emailView setupKey:@"category" value:[dataObj objectForKey:@"category"]];
                    [self.birthdayView setupKey:@"category" value:[dataObj objectForKey:@"category"]];
                    
//                    [self.phoneView setupKey:@"autor_name" value:[dataObj objectForKey:@"author_name"]];
                
                    [self.phoneLabel setText:@"phone"];
                    [self.phoneTextField setText:@"13412341234"];
                    
                }
            }
        }
        
        
        
    }];
    
    [sessionDataTask resume];

}




@end



























