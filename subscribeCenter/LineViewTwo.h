//
//  LineViewTwo.h
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/23.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LineViewTwo : UIView


@property (nonatomic) CGFloat offsetX;


//显示动画
- (void)showWithDuration:(CGFloat)duration animated:(BOOL)animated;

//隐藏动画
- (void)hideWithDuration:(CGFloat)duration animated: (BOOL)animated;

//创建view
- (void)buildView;

//动画百分比
- (void)percent:(CGFloat)percent;





@end
