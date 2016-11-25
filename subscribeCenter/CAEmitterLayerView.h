//
//  CAEmitterLayerView.h
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/27.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CAEmitterLayerView : UIView

@property (nonatomic, strong)  CAEmitterLayer *emitterLayer;
/**
 模仿setter、geter方法

 @param layer <#layer description#>
 */
- (void)setEmitterLayer:(CAEmitterLayer *)layer;

- (CAEmitterLayer *)EmitterLayer;

- (void)show;

- (void)hide;


@end
