//
//  UIImage+ImageWaterPrint.m
//  subscribeCenter
//
//  Created by wangyouzhan on 2016/11/28.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "UIImage+ImageWaterPrint.h"

@implementation UIImage (ImageWaterPrint)


-(UIImage*)imageWater:(UIImage*)imageLogo waterString:(NSString *)waterString{
    
    UIGraphicsBeginImageContext(self.size);
    
    //原始图片渲染
    [self drawInRect:CGRectMake(0, 0, self.size.width, self.size.height)];
    CGFloat waterX = 300;
    CGFloat waterY = 100;
    CGFloat waterW = 100;
    CGFloat waterH = 100;
    //logo 渲染
    [imageLogo drawInRect:CGRectMake(waterX, waterY, waterW, waterH)];
    //渲染文字
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle defaultParagraphStyle] mutableCopy];
    
    NSDictionary *dic = @{NSFontAttributeName: [UIFont systemFontOfSize:20.0],
                          NSParagraphStyleAttributeName:paragraphStyle,
                          NSForegroundColorAttributeName:[UIColor redColor]};
    [waterString drawInRect:CGRectMake(0, 0, 300, 60) withAttributes:dic];
    
    //UIImage
    UIImage *imageNew = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return imageNew;
}

@end
