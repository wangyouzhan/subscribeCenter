//
//  UIImage+ImageScale.m
//  subscribeCenter
//
//  Created by wangyouzhan on 2016/11/28.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "UIImage+ImageScale.h"

@implementation UIImage (ImageScale)

-(UIImage *)imageScaleSize:(CGSize)size{
    
    UIGraphicsBeginImageContext(size);
    
    [self drawInRect:CGRectMake(0, 0, size.width, size.height)];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return image;
}


@end
