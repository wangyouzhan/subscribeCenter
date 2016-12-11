//
//  KeyValueView.m
//  subscribeCenter
//
//  Created by wangyouzhan on 2016/12/10.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "KeyValueView.h"

@implementation KeyValueView


-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _keyLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.frame) / 3, CGRectGetHeight(self.frame))];
        _keyLabel.backgroundColor = [UIColor clearColor];
        _keyLabel.textAlignment = NSTextAlignmentCenter;
        _keyLabel.font = [UIFont systemFontOfSize:16];
        _keyLabel.textColor = [UIColor blackColor];
        [self addSubview:_keyLabel];
        
        _valueLabel = [[UILabel alloc] initWithFrame:CGRectMake(CGRectGetWidth(self.frame) / 3, 0, 2 * CGRectGetWidth(self.frame) / 3, CGRectGetHeight(self.frame))];
        _valueLabel.backgroundColor = [UIColor clearColor];
        _valueLabel.textAlignment = NSTextAlignmentCenter;
        _valueLabel.font = [UIFont systemFontOfSize:16];
        _valueLabel.textColor = [UIColor blackColor];
        [self addSubview:_valueLabel];
    }
    
    return self;
}

- (void)setupKey:(NSString *)key value:(NSString *)value{
    [_keyLabel setText:key];
    [_valueLabel setText:value];
}


@end


































