//
//  PopViewController.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/25.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "PopViewController.h"
#import <pop/POP.h>


@interface PopViewController ()

@property(nonatomic, strong)UIButton *button;

@end

@implementation PopViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //初始化UIButton
    self.button = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    self.button.backgroundColor = [UIColor redColor];
    self.button.layer.cornerRadius = 50;
    self.button.layer.masksToBounds = YES;
    self.button.center = self.view.center;
    [self.view addSubview:self.button];
    [self.button addTarget:self action:@selector(buttonEvent:) forControlEvents:UIControlEventTouchUpInside];
    
    //初始化一个手势
    
    UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePanGesture:)];
    
    [self.button addGestureRecognizer:panGesture];
    
    
    
    
}

- (void)handlePanGesture:(UIPanGestureRecognizer *)recognizer{
    
    CGPoint translation = [recognizer translationInView:self.view];
    recognizer.view.center = CGPointMake(recognizer.view.center.x + translation.x, recognizer.view.center.y + translation.y);
    [recognizer setTranslation:CGPointMake(0, 0) inView:recognizer.view];
    
    
    if (recognizer.state == UIGestureRecognizerStateEnded) {
        CGPoint velocity = [recognizer velocityInView:self.view];
        
        POPDecayAnimation *decayAnimation = [POPDecayAnimation animationWithPropertyNamed:kPOPLayerPosition];
        decayAnimation.velocity   = [NSValue valueWithCGPoint:velocity];
        [recognizer.view.layer pop_addAnimation:decayAnimation forKey:nil];
    }
}


- (void)buttonEvent:(UIButton*)button{
    
    [self.button pop_removeAllAnimations];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
















