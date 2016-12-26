//
//  MVCView.h
//  subscribeCenter
//
//  Created by wangyouzhan on 2016/12/25.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Pager.h"

@protocol MVCViewDelegate <NSObject>

- (void)onPrintBtnClick;

@end



@interface MVCView : UIView

- (void)printOnView:(Pager*)paper;

@property (nonatomic, weak) id<MVCViewDelegate>   delegate;


@end
