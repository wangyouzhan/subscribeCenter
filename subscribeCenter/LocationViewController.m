//
//  LocationViewController.m
//  subscribeCenter
//
//  Created by wangyouzhan on 2016/12/10.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "LocationViewController.h"
#import <CoreLocation/CoreLocation.h>

@interface LocationViewController ()
{
    CLLocationManager *locationManager;
}

@end

@implementation LocationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor redColor];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 20, 100, 30)];
    label.backgroundColor = [UIColor greenColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.text = @"点击";
    [self.view addSubview:label];
    
    locationManager = [[CLLocationManager alloc] init];
    [locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
    if ([[[UIDevice currentDevice] systemVersion] floatValue]>= 8.0) {
        [locationManager requestAlwaysAuthorization];
    }
    
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 9.0) {
        locationManager.allowsBackgroundLocationUpdates = true;
    }
    
    [locationManager startUpdatingLocation];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end























