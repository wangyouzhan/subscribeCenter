//
//  FBKViewController.m
//  subscribeCenter
//
//  Created by wangyouzhan on 2016/12/25.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "FBKViewController.h"
#import <KVOController/KVOController.h>
#import "Person.h"
#import "MVCViewController.h"
#import "MVPViewController.h"

@interface FBKViewController ()
{
    Person* personOne;
    FBKVOController *fbKVO;
    NSMutableArray *listArray;
    UILabel *lbl;
    UILabel *age;
    UILabel *oldAge;
}

@end


@implementation FBKViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"test";
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    lbl = [[UILabel alloc] initWithFrame:CGRectMake(20, 200, 200, 44)];
    lbl.backgroundColor = [UIColor lightGrayColor];
    lbl.text = @"test";
    [self.view addSubview:lbl];
    
    age = [[UILabel alloc] initWithFrame:CGRectMake(20, 450, 200, 44)];
    age.backgroundColor = [UIColor lightGrayColor];
    age.text = @"age";
    [self.view addSubview:age];
    
    oldAge = [[UILabel alloc] initWithFrame:CGRectMake(20, 300, 200, 44)];
    oldAge.backgroundColor = [UIColor lightGrayColor];
    oldAge.text = @"test";
    [self.view addSubview:oldAge];
    
    personOne = [[Person alloc] init];
    personOne.pName = @"defaultName";
    personOne.pAge = @"24";
    
    
    FBKVOController *kVOController = [FBKVOController controllerWithObserver:self];
    self.KVOController = kVOController;
   
    
    [kVOController observe:personOne keyPath:@"pName" options:NSKeyValueObservingOptionNew  block:^(id  _Nullable observer, id  _Nonnull object, NSDictionary<NSString *,id> * _Nonnull change) {
        
        lbl.text = change[NSKeyValueChangeNewKey];
    }];
    
    
    [kVOController observe:personOne keyPath:@"pAge" options:NSKeyValueObservingOptionNew block:^(id  _Nullable observer, id  _Nonnull object, NSDictionary<NSString *,id> * _Nonnull change) {
        age.text = change[NSKeyValueChangeNewKey];
        oldAge.text = change[NSKeyValueChangeNewKey];
    
    }];
    
    
    [kVOController observe:personOne keyPath:@"pColour" options:NSKeyValueObservingOptionNew block:^(id observer, id object, NSDictionary *change) {
        lbl.backgroundColor = change[NSKeyValueChangeNewKey];
    }];
    
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0f * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self showMVP];
    });
    
    
    
    
}

- (void)showMVP{
    
    
    MVPViewController *mvpViewController = [[MVPViewController alloc] init];
    [self presentViewController:mvpViewController animated:YES completion:nil];
    
}

- (void)showMVC{
    
    MVCViewController *mvcViewController = [[MVCViewController alloc] init];
    [self presentViewController:mvcViewController animated:YES completion:nil];
    
}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
    int red = arc4random() % 255;
    int green = arc4random() % 255;
    int blue = arc4random() % 255;
    
    lbl.backgroundColor = [UIColor colorWithRed:red/255.0f green:green/255.0f blue:blue/255.0f alpha:1.0f];
    age.backgroundColor = [UIColor colorWithRed:red/255.0f green:green/255.0f blue:blue/255.0f alpha:1.0f];
    
    oldAge.backgroundColor = [UIColor colorWithRed:red/255.0f green:green/255.0f blue:blue/255.0f alpha:1.0f];
    
    int nums = arc4random() % 10;
    personOne.pName = [NSString stringWithFormat:@"name%d", nums];
    
    int numsTwo = arc4random() % 100;
    personOne.pAge = [NSString stringWithFormat:@"age%d", numsTwo];
}


@end




































