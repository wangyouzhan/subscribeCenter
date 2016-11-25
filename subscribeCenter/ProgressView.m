//
//  ProgressView.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/27.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "ProgressView.h"

@interface ProgressView ()

@property (nonatomic,strong) CALayer *cLayer;
@property (nonatomic, assign) CGFloat currentViewWidth;


@end


@implementation ProgressView


-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        self.cLayer = [CALayer layer];
        self.cLayer.frame = CGRectMake(frame.origin.x, frame.origin.y, 0, frame.size.height);
        self.layer.backgroundColor = [UIColor redColor].CGColor;
        [self.layer addSublayer:self.cLayer];
        
        
        
        //存储当前view的宽度值
        self.currentViewWidth = frame.size.width;
    }
    return self;
}


@synthesize progress = _progress;
- (void)setProgress:(CGFloat)progress{
    
    _progress = progress;
    NSLog(@"%f------------", progress);
    NSLog(@"%f",self.currentViewWidth);
    
    
    if (progress <= 0) {
        self.layer.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, 0, self.frame.size.height);
    } else if (progress <= 1){
        self.layer.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, progress * self.currentViewWidth, self.frame.size.height);
    } else{
        self.layer.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, self.currentViewWidth, self.frame.size.height);
    }
    
}


-(CGFloat)progress{
    return _progress;
}




@end




























