//
//  KeyValueView.h
//  subscribeCenter
//
//  Created by wangyouzhan on 2016/12/10.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KeyValueView : UIView

@property (nonatomic, strong) UILabel *keyLabel;
@property(nonatomic, strong) UILabel *valueLabel;

- (void)setupKey:(NSString *)key value:(NSString*)value;

@end
