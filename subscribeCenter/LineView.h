//
//  LineView.h
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/23.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LineView : UIView

@property(nonatomic) CGFloat offsetX;


/**
 显示动画
 */
- (void)show;


/**
 隐藏动画
 */
- (void)hide;


@end
