
//
//  ColorUiImageView.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/27.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "ColorUiImageView.h"

@interface ColorUiImageView ()

@property (nonatomic, strong) CAGradientLayer *gradientLayer;


@end


@implementation ColorUiImageView


-(instancetype)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {
        self.gradientLayer = [CAGradientLayer layer];
        self.gradientLayer.frame = self.bounds;
        
        self.gradientLayer.colors = @[(__bridge id)[UIColor clearColor].CGColor,
                                      (__bridge id)[UIColor redColor].CGColor];
        
        self.gradientLayer.locations = @[@(0.5), @(1)];
        
        [self.layer addSublayer:self.gradientLayer];
    }
    
    return self;
    
}

@synthesize color = _color;
-(void)setColor:(UIColor *)color{
    _color = color;
    self.gradientLayer.colors = @[(__bridge id)[UIColor clearColor].CGColor,
                                  (__bridge id)color.CGColor];
}


-(UIColor *)color{
    return _color;
}


@synthesize percent = _percent;
-(void)setPercent:(CGFloat)percent{
    _percent = percent;
    self.gradientLayer.locations = @[@(percent), @(1)];
}


-(CGFloat)percent{
    return _percent;
}

@synthesize direction = _direction;
-(void)setDirection:(EColorDirection)direction{
    
    if (direction == UP) {
        self.gradientLayer.startPoint = CGPointMake(0, 0);
        self.gradientLayer.endPoint = CGPointMake(0, 1);
    }else if(direction == DOWN){
        self.gradientLayer.startPoint = CGPointMake(0, 1);
        self.gradientLayer.endPoint = CGPointMake(0, 0);
    } else if (direction == RIGHT){
        self.gradientLayer.startPoint = CGPointMake(1, 0);
        self.gradientLayer.endPoint = CGPointMake(0, 0);
        
    } else if (direction == LEFT){
        self.gradientLayer.startPoint = CGPointMake(0, 0);
        self.gradientLayer.endPoint = CGPointMake(1, 0);
    } else{
        self.gradientLayer.startPoint = CGPointMake(0, 0);
        self.gradientLayer.endPoint = CGPointMake(0, 1);
    }
    
    
    
}

-(EColorDirection)direction{
    return _direction;
}


@end






























