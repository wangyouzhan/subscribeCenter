//
//  FadeOutInViewController.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/27.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "FadeOutInViewController.h"

@interface FadeOutInViewController ()

@property (nonatomic, strong) CALayer *imageLayer;

@end

@implementation FadeOutInViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    
    UIImage *image1 = [UIImage imageNamed:@"bootpage3"];
    
    self.imageLayer = [CALayer layer];
    self.imageLayer.frame = CGRectMake(0, 0, 302, 707);
    
    [self.view.layer addSublayer:self.imageLayer];
    
    self.imageLayer.contents = (__bridge id)(image1.CGImage);
    
    
    [self performSelector:@selector(layerAnimation)
               withObject:nil
               afterDelay:3.f];
  
    
}

-(void)layerAnimation{
    
    UIImage *image2 = [UIImage imageNamed:@"start720"];
    
    CABasicAnimation *contentsAnimation = [CABasicAnimation animationWithKeyPath:@"contents"];
    contentsAnimation.fromValue = self.imageLayer.contents;
    contentsAnimation.toValue = (__bridge id)(image2.CGImage);
    contentsAnimation.duration = 3.f;
    
    //bounds
    CABasicAnimation *boundsAnimation = [CABasicAnimation animationWithKeyPath:@"bounds"];
    boundsAnimation.fromValue = [NSValue valueWithCGRect:self.imageLayer.bounds];
    boundsAnimation.toValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 302/ 2.f, 707/2.f)];
    boundsAnimation.duration = 3.f;
    
    //动画组合
    CAAnimationGroup *groupAnimation = [CAAnimationGroup animation];
    groupAnimation.animations = @[contentsAnimation, boundsAnimation];
    groupAnimation.duration = 3.f;
    
    //设定layer动画结束之后的值
    self.imageLayer.contents = (__bridge id)(image2.CGImage);
    self.imageLayer.bounds = CGRectMake(0, 0, 302 /2.f, 707/2.f);
    
    //提交动画
    
    
    [self.imageLayer addAnimation:groupAnimation forKey:nil];
    

}



@end

























