//
//  ImageViewController.m
//  subscribeCenter
//
//  Created by wangyouzhan on 2016/11/27.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "ImageViewController.h"
#import <ImageIO/ImageIO.h>
#import <MobileCoreServices/MobileCoreServices.h>
#import "UIImage+ImageRotate.h"
#import "UIImage+ImageCut.h"
#import "UIImage+ImageCircle.h"
#import "UIImage+ImageScale.h"
#import "UIView+ImageScreenShot.h"
#import "UIImage+ImageWaterPrint.h"

@interface ImageViewController ()

@end

@implementation ImageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view setBackgroundColor:[UIColor blueColor]];


    [self imageTestWater];
//    [self saveScreen];
//    [self scratchImage];
//    [self cicleCutImage];
//    [self cutImage];
//    [self jpgToPng];
//    [self jpgToJpg];
//    [self gifImage];
    
    
    
    
}


-(void)imageTestWater{
    
    UIImage *image = [UIImage imageNamed:@"Documents1"];
    UIImage *logo = [UIImage imageNamed:@"head"];
    UIImage *imageNew = [image imageWater:logo waterString:@"www.wangyouzhan.com"];
    UIImageWriteToSavedPhotosAlbum(imageNew, nil, nil, nil);
}


/**
 * 保存截屏
 */
-(void)saveScreen{
    
    UIImage *imageNew = [self.view imageScreenShot];
    UIImageWriteToSavedPhotosAlbum(imageNew, nil, nil, nil);
    
}


/**
 *缩放图片
 */
-(void)scratchImage{
    
    UIImage *image = [UIImage imageNamed:@"head"];
    UIImage *imageNew = [image imageScaleSize:CGSizeMake(200, 500)];
    UIImageWriteToSavedPhotosAlbum(imageNew, nil, nil, nil);
}


/**
 *剪切图片
 */
-(void)cicleCutImage{
    UIImage *image = [UIImage imageNamed:@"head"];
    UIImage *imageNew = [image imageClipCircle];
    UIImageWriteToSavedPhotosAlbum(imageNew, nil, nil, nil);
    
}


//剪切图片
-(void)cutImage{
    UIImage *image = [UIImage imageNamed:@"head"];
    UIImage *imageNew = [image ImageCutSize:CGRectMake(0, 0, 100, 100)];
    UIImageWriteToSavedPhotosAlbum(imageNew, nil, nil, nil);
    
}


- (void)roateImage{
    
    //保存旋转的图片
    UIImage *image = [UIImage imageNamed:@"head"];
    UIImage *imageNew = [image imageRotateIndegree:45 * (3.14 / 180)];
    UIImageWriteToSavedPhotosAlbum(imageNew, nil, nil, nil);
    
}


/**
 * 两种不同的方式读取图片呢，mamery消耗多少
 */
- (void)readImages{
    
    //size * scale
    
    NSLog(@"scale == %f" ,[UIScreen mainScreen].scale);
    
    NSMutableArray *imageArray = [[NSMutableArray alloc] init];
    
    //加载图片方法一
    //    for(int i = 1; i < 14; i++){
    //        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"Documents%d",i]];
    //        [imageArray addObject:image];
    //    }
    
    //    for (int i = 1; i < 14; i++) {
    //        NSString *imagePath = [[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"Documents%d",i] ofType:@"png"];
    //        UIImage *image = [UIImage imageWithContentsOfFile:imagePath];
    //        [imageArray addObject:image];
    //    }
    
    //    NSString *path  = [[NSBundle mainBundle] bundlePath];
    //    NSLog(@"-------%@", path);
    
    imageArray = nil;

    
}


-(void)gifImage{
    
    NSString *gifPathSource = [[NSBundle mainBundle] pathForResource:@"mouse" ofType:@"gif"];
    NSData *data = [NSData dataWithContentsOfFile:gifPathSource];
    CGImageSourceRef source = CGImageSourceCreateWithData((__bridge CFDataRef)data, NULL);
    
    //分解帧数
    size_t count =  CGImageSourceGetCount(source);
    
    NSMutableArray *tmpArray = [[NSMutableArray alloc] init];
//    NSLog(@"count=%d", count);
    for (size_t i = 0; i < count; i++) {
        CGImageRef imageref = CGImageSourceCreateImageAtIndex(source, i, NULL);
        
        UIImage *image = [UIImage imageWithCGImage:imageref scale:[UIScreen mainScreen].scale orientation:UIImageOrientationUp];
        [tmpArray addObject:image];
        CGImageRelease(imageref);
    }
    CFRelease(source);
    
    //单帧图保存
    int i = 0;
    for (UIImage *image in tmpArray) {
        i ++;
        NSData *data = UIImagePNGRepresentation(image);
        NSArray *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        NSString *gifPath = path[0];
        NSLog(@"-----------%@",gifPath);
        NSString *pathNum = [gifPath stringByAppendingString:[NSString stringWithFormat:@"%d.png", i]];
        [data writeToFile:pathNum atomically:NO];
    }
    
    
}



-(void)jpgToPng{
    
    UIImage *image = [UIImage imageNamed:@"head"];
    NSData *data = UIImagePNGRepresentation(image);
    UIImage *imagePng = [UIImage imageWithData:data];
    UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil);
    
    
}

-(void)jpgToJpg{
    
    UIImage *image = [UIImage imageNamed:@"head"];
    NSData *data = UIImageJPEGRepresentation(image, 1);
    UIImage *imagePng = [UIImage imageWithData:data];
    UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil);

    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}



@end














