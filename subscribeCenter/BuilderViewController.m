
//
//  BuilderViewController.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/20.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "BuilderViewController.h"
#import "AbstractDoor.h"
#import "Door.h"
#import "Wheels.h"
#import "Engine.h"
#import "Builder.h"

@interface BuilderViewController ()

@property (nonatomic, strong) Builder *builder;

@end

@implementation BuilderViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    
    self.builder = [[Builder alloc] init];
    self.builder.engine = [[Engine alloc] init];
    self.builder.door = [[Door alloc] init];
    self.builder.wheels = [[Wheels alloc] init];
    
    [self.builder buildAllParts];
    
    NSLog(@"%@", self.builder.productsInfo);
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
