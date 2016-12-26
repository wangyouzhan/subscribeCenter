//
//  MVPView.m
//  subscribeCenter
//
//  Created by wangyouzhan on 2016/12/26.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "MVPView.h"

@interface MVPView ()

@property (nonatomic, strong) UILabel*     lbContent;
@property (nonatomic, strong) UIButton*   btnPrint;

@end


@implementation MVPView


- (instancetype)init{
    
    self = [super init];
    if (self) {
        self.lbContent = [UILabel new];
        
        self.backgroundColor = [UIColor redColor];
        [self addSubview:self.lbContent];
        _lbContent.frame = CGRectMake(0, 100, 300, 30);
        _lbContent.textAlignment = NSTextAlignmentCenter;
        _lbContent.textColor = [UIColor blackColor];
        
        self.btnPrint = [UIButton new];
        
        _btnPrint.frame = CGRectMake(100, 200, 100, 50);
        [_btnPrint setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_btnPrint setTitle:@"OnClick" forState:UIControlStateNormal];
        [_btnPrint addTarget:self action:@selector(onPrintClick) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:_btnPrint];
        
        
    }
    
    return self;
}


-(void)printOnView:(NSString *)content{
    
    _lbContent.text = content;
    
}

- (void)onPrintClick{
    
    if (_delegate) {
        [_delegate onPrintBtnClick];
    }
    
    
}


@end
