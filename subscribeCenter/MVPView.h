//
//  MVPView.h
//  subscribeCenter
//
//  Created by wangyouzhan on 2016/12/26.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol MVPViewDelegate <NSObject>

- (void)onPrintBtnClick;

@end


@interface MVPView : UIView

- (void)printOnView:(NSString*)content;


@property(nonatomic, weak) id<MVPViewDelegate>     delegate;



@end
