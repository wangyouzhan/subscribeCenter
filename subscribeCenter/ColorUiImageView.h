//
//  ColorUiImageView.h
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/27.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    UP,
    DOWN,
    RIGHT,
    LEFT,
} EColorDirection;


@interface ColorUiImageView : UIImageView


@property (nonatomic, assign) EColorDirection direction;


/**
 颜色
 */
@property (nonatomic, strong) UIColor *color;


/**
 百分比
 */
@property (nonatomic, assign) CGFloat percent;

@end
