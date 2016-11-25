//
//  CAEmitterLayerView.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/27.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "CAEmitterLayerView.h"




@implementation CAEmitterLayerView


+ (Class)layerClass{
    return [CAEmitterLayer class];
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _emitterLayer = (CAEmitterLayer *)self.layer;
    }
    return self;
}


-(void)setEmitterLayer:(CAEmitterLayer *)layer{
    _emitterLayer = layer;
}


-(CAEmitterLayer *)EmitterLayer{
    return _emitterLayer;
}


-(void)show{
    
}

-(void)hide{
    
}



@end







































