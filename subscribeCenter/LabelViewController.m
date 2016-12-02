//
//  LabelViewController.m
//  subscribeCenter
//
//  Created by wangyouzhan on 2016/12/2.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "LabelViewController.h"

@interface LabelViewController ()

@end

@implementation LabelViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
//    NSString *path = [[NSBundle mainBundle] resourcePath];
//    NSString *imagePath = [NSString stringWithFormat:@"%@/Documents1.png", path];
//    
////    UIImage *image = [[UIImage alloc] initWithContentsOfFile:imagePath];
//    UIImage *image1 = [UIImage imageNamed:@"Documents1"];
//    
//    NSLog(@"%@", path);
//    UIImageView *imageView = [[UIImageView alloc] initWithImage:image1];
//    imageView.frame = CGRectMake(10, 100, 355, 400);
//    imageView.contentMode = UIViewContentModeScaleAspectFill;
//    
//    [self.view addSubview:imageView];

    NSMutableArray *imageArray = [[NSMutableArray alloc] init];
    for (int i=1; i<=4; i++) {
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"Documents%d",i]];
        [imageArray addObject:image];
    }
    
    UIImageView *imageView = [[UIImageView alloc] init];
    imageView.frame = CGRectMake(10, 100, 400, 300);
    
    [self.view addSubview:imageView];
    
    imageView.animationImages = imageArray;
    imageView.animationDuration = 2;
    imageView.animationRepeatCount = 0;
    
    [imageView startAnimating];
    
    
    
}



- (void)testLabel{
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *label = [[UILabel alloc] init];
    label.frame = CGRectMake(10, 100, 300, 300);
    label.backgroundColor = [UIColor yellowColor];
    //文本
    label.text = @"2007我是一个标签别再纠结神马WiFi辐射、吃什么会流产了，拜托，谣言都辟过八百回了。最重要的是用科学的方法照顾好自己和宝宝的营养，科普贴翻了不少，我给大家列列：衣：远离微波炉和电吹风，万一查体拍片了专家都说没事，防辐射服怪热的就别裹着了；除了专门的孕妇装，很多时尚品牌也推出了孕妈装，孕妈也可以神采飞扬。";
    label.textAlignment = NSTextAlignmentCenter;
    //    label.textColor = [UIColor clearColor];
    label.textColor =[UIColor colorWithRed:0.31 green:0.75 blue:0.97 alpha:1.00];
    label.alpha = 0.5;
    //    label.font = [UIFont systemFontOfSize:25];
    //    label.font = [UIFont boldSystemFontOfSize:25];
    //    label.font = [UIFont italicSystemFontOfSize:25];
    
    for(NSString *name in [UIFont familyNames])
    {
        NSLog(@"%@",name);
    }
    
    label.font = [UIFont fontWithName:@"Bodoni 72" size:30];
    
    //设置阴影
    //    label.shadowColor = [UIColor redColor];
    //    label.shadowOffset = CGSizeMake(-5, -5);
    label.lineBreakMode = NSLineBreakByCharWrapping;
    label.numberOfLines = 0;
    
    //根据字符串大小计算label的大小
    CGSize size = [label.text sizeWithFont:label.font constrainedToSize:CGSizeMake(355, 10000) lineBreakMode:NSLineBreakByCharWrapping];
    
    label.frame = CGRectMake(label.frame.origin.x, label.frame.origin.y, label.frame.size.width, size.height);
    
    
    [self.view addSubview:label];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
















