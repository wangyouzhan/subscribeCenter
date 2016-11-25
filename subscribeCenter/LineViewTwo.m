//
//  LineViewTwo.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/23.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "LineViewTwo.h"

@interface LineViewTwo ()

@property(nonatomic) CGRect startRect;
@property(nonatomic) CGRect midRect;
@property(nonatomic) CGRect endRect;

@end

@implementation LineViewTwo


-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        self.alpha = 0.f;
    }
    
    return self;
}


//显示动画
- (void)showWithDuration:(CGFloat)duration animated:(BOOL)animated{
    if (animated == YES) {
        [UIView animateWithDuration:duration animations:^{
            self.frame = self.midRect;
            self.alpha = 1.0f;
        }];
    }else{
        self.frame = self.midRect;
        self.alpha = 1.0f;
    }
}

//隐藏动画
- (void)hideWithDuration:(CGFloat)duration animated: (BOOL)animated{
    
    if (animated == YES) {
        [UIView animateWithDuration:duration animations:^{
            self.frame = self.endRect;
            self.alpha = 0.f;
        } completion:^(BOOL finished) {
            self.frame = self.startRect;
        }];
    }else{
        self.frame = self.startRect;
        self.alpha = 0.f;
    }
}

//创建view
- (void)buildView{
    
    self.startRect = self.frame;
    self.midRect = CGRectMake(self.startRect.origin.x + self.offsetX,
                              self.startRect.origin.y,
                              self.startRect.size.width,
                              self.startRect.size.height);
    self.endRect = CGRectMake(self.startRect.origin.x + self.offsetX * 2,
                              self.startRect.origin.y,
                              self.startRect.size.width,
                              self.startRect.size.height);
    
}

//动画百分比
- (void)percent:(CGFloat)percent{
    
    CGRect tmpRect = self.startRect;
    CGFloat tmpOffsetX = 0;
    
    if (percent <= 0) {
        tmpOffsetX = 0;
    } else if (percent >= 1){
        tmpOffsetX = self.offsetX;
    } else {
        tmpOffsetX = percent * self.offsetX;
    }
    
    self.frame = CGRectMake(self.startRect.origin.x + tmpOffsetX
                            , self.startRect.origin.y
                            , self.startRect.size.width,
                            self.startRect.size.height);
    
    
}








@end
