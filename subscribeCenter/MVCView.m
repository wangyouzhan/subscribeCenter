//
//  MVCView.m
//  subscribeCenter
//
//  Created by wangyouzhan on 2016/12/25.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "MVCView.h"


@interface MVCView ()

@property (nonatomic, strong) UIButton*     btnPrint;

@end

@implementation MVCView



- (instancetype)init{
    
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor greenColor];
        self.btnPrint = [UIButton new];
        
        _btnPrint.frame = CGRectMake(100, 100, 100, 50);
        [_btnPrint setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_btnPrint setTitle:@"print" forState:UIControlStateNormal];
        [_btnPrint addTarget:self action:@selector(onPrintClick) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:_btnPrint];
    }
    
    return self;
    
}


- (void)onPrintClick
{
    if (_delegate) {
        [_delegate onPrintBtnClick];
    }
}

- (void)printOnView:(Pager *)paper
{
    NSLog(@"printing pager content %@" , paper.content);
    
}




@end
