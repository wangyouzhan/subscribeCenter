//
//  UIView+ImageScreenShot.m
//  subscribeCenter
//
//  Created by wangyouzhan on 2016/11/28.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "UIView+ImageScreenShot.h"

@implementation UIView (ImageScreenShot)


-(UIImage *)imageScreenShot{
    
    UIGraphicsBeginImageContext(self.frame.size);
    [self.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *imageNew = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return imageNew;
}

@end
