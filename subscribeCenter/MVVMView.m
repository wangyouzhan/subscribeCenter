
//
//  MVVMView.m
//  subscribeCenter
//
//  Created by wangyouzhan on 2016/12/26.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "MVVMView.h"
#import <KVOController/KVOController.h>
#import "MVVMViewModel.h"

@interface MVVMView ()

@property (nonatomic, strong) UILabel*    lbContent;
@property (nonatomic, strong) UIButton*    btnPrint;
@property (nonatomic, strong) MVVMViewModel* mmViewModel;


@end


@implementation MVVMView



- (instancetype)init{
    
    self = [super init];
    
    if (self) {
        self.lbContent = [UILabel new];
        [self addSubview:_lbContent];
        self.backgroundColor = [UIColor yellowColor];
        
        _lbContent.frame = CGRectMake(100, 100, 100, 30);
        _lbContent.font = [UIFont systemFontOfSize:20];
        _lbContent.textColor = [UIColor greenColor];
        
        self.btnPrint = [UIButton new];
        
        _btnPrint.frame = CGRectMake(100, 200, 100, 50);
        [_btnPrint setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_btnPrint setTitle:@"OnClick" forState:UIControlStateNormal];
        [_btnPrint addTarget:self action:@selector(onPrintClick) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:_btnPrint];
        

        
    }
    
    return self;
}

-(void)setWithViewModel:(MVVMViewModel *)vm{
    
    self.mmViewModel = vm;
    FBKVOController *kVOController = [FBKVOController controllerWithObserver:self];
    self.KVOController = kVOController;
    
    [self.KVOController observe:vm keyPath:@"contentStr" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionInitial block:^(id  _Nullable observer, id  _Nonnull object, NSDictionary<NSString *,id> * _Nonnull change) {
        
        NSString* newContent = change[NSKeyValueChangeNewKey];
        _lbContent.text = newContent;
        NSLog(@"-------%@", newContent);
    }];

}



-(void)onPrintClick{
    
    [[self mmViewModel] onPrintClick];
    
}





@end















