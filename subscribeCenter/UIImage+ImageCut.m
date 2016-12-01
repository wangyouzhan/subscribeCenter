
//
//  UIImage+ImageCut.m
//  subscribeCenter
//
//  Created by wangyouzhan on 2016/11/28.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "UIImage+ImageCut.h"

@implementation UIImage (ImageCut)

-(UIImage *)ImageCutSize:(CGRect)rect
{
    CGImageRef subImageref = CGImageCreateWithImageInRect(self.CGImage, rect);
    CGRect smallRect = CGRectMake(0, 0, CGImageGetWidth(subImageref), CGImageGetHeight(subImageref));
    
    UIGraphicsBeginImageContext(smallRect.size);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextDrawImage(context, smallRect, subImageref);
    UIImage *image = [UIImage imageWithCGImage:subImageref];
    
    UIGraphicsEndImageContext();
    
    return image;
}

@end
