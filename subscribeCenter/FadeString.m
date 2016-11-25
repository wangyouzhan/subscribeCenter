//
//  FadeString.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/24.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "FadeString.h"


@interface FadeString ()

@property(nonatomic, strong) UILabel *label;
@property(nonatomic, strong) NSString *text;

@end

@implementation FadeString







@synthesize text = _text;

- (void)setText:(NSString *)text{
    _text = text;
    self.label.text = text;
}


- (NSString *)text{
    return _text;
}


@end
