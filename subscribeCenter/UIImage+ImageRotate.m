//
//  UIImage+ImageRotate.m
//  subscribeCenter
//
//  Created by wangyouzhan on 2016/11/28.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "UIImage+ImageRotate.h"
#import <QuartzCore/QuartzCore.h>
#import <Accelerate/Accelerate.h>


@implementation UIImage (ImageRotate)


/**
 *旋转图片
 */
-(UIImage *)imageRotateIndegree:(float)degree{
    
    //1.image-> Context
    size_t width = (size_t)self.size.width * self.scale;
    size_t height = (size_t)self.size.height * self.scale;
    
    size_t bytesPerRow = width * 4; //表明每行图片数据字节
    CGImageAlphaInfo alphaInfo = kCGImageAlphaPremultipliedFirst;//alpha
    
    //配置context
    CGContextRef bmContext = CGBitmapContextCreate(NULL, width, height, 8, bytesPerRow, CGColorSpaceCreateDeviceRGB(), kCGBitmapByteOrderDefault | alphaInfo);
    if (!bmContext) {
        return nil;
    }
    
    CGContextDrawImage(bmContext, CGRectMake(0, 0, width, height), self.CGImage);
    
    
    //旋转
    UInt8 *data = (UInt8*)CGBitmapContextGetData(bmContext);
    vImage_Buffer src = {data, height, width, bytesPerRow};
    vImage_Buffer dest = {data, height, width, bytesPerRow};
    Pixel_8888 bgColor = {0, 0, 0, 0};
    vImageRotate_ARGB8888(&src, &dest, NULL, degree, bgColor, kvImageBackgroundColorFill);
    
    //3 context - UImage
    CGImageRef rotateImageref = CGBitmapContextCreateImage(bmContext);
    UIImage  *rotateImage = [UIImage imageWithCGImage:rotateImageref scale:self.scale orientation:self.imageOrientation];
    
    return rotateImage;
    
}


@end



























