//
//  FactroyPatterViewController.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/19.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "FactroyPatterViewController.h"
#import "BaseFactory.h"
#import "GoogleFactory.h"
#import "AppleFactory.h"
#import "FactoryManager.h"

@interface FactroyPatterViewController ()

@end

@implementation FactroyPatterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //创建工厂
//    BaseFactory *factory = [FactoryManager factoryWithBrand:kApple];
//    BaseFactory *factory = [FactoryManager factoryWithBrand:kGoogle];
//    
//    //创建商品
//    BasePhone *phone = [factory createWatch];
//    BaseWatch *watch = [factory createWatch];
//    
//    
//    NSLog(@"%@----%@", phone, watch);
    
    NSNumber *value = [NSNumber numberWithInt:100];
    NSNumber *fistValue = [NSNumber numberWithFloat:100.f];
    
    
    int va = [value intValue];
    NSLog(@"%d", va);
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end

















