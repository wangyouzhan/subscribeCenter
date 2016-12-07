//
//  pThreadViewController.m
//  subscribeCenter
//
//  Created by wangyouzhan on 2016/12/7.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "pThreadViewController.h"
#import <pthread.h>
#import "TicketManager.h"

@interface pThreadViewController ()


@end

@implementation pThreadViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 100, 100, 30);
    btn.backgroundColor = [UIColor greenColor];
    [btn setTitle:@"pThread" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(clickPThread) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    //NSThread
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn2.frame = CGRectMake(100, 150, 100, 30);
    btn2.backgroundColor = [UIColor greenColor];
    [btn2 setTitle:@"NSThread" forState:UIControlStateNormal];
    [btn2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn2 addTarget:self action:@selector(clickPThreadTwo) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn2];
    
    
    //买票
    UIButton *btn3 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn3.frame = CGRectMake(100, 190, 100, 30);
    btn3.backgroundColor = [UIColor greenColor];
    [btn3 setTitle:@"买票" forState:UIControlStateNormal];
    [btn3 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn3 addTarget:self action:@selector(saleTicket) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn3];

}


- (void)saleTicket{
    TicketManager *ticketManger = [[TicketManager alloc] init];
    [ticketManger startSale];
}





#pragma mark - NSThread Test
- (void)clickPThreadTwo{
    
    NSThread *thread = [[NSThread alloc] initWithTarget:self selector:@selector(runTrehad ) object:nil];
    thread.name = @"thread1";
    [thread start];
    
//    [NSThread detachNewThreadSelector:@selector(runTrehad) toTarget:self withObject:nil];
    
//    [self performSelectorInBackground:@selector(runTrehad) withObject:self];
    
    NSLog(@"我在主线程中执行...");
}

- (void)runTrehad{
    
    
    NSLog(@"在子线程中执行....%@", [NSThread currentThread].name);
    
    for (int i = 1; i < 10; i++) {
        NSLog(@"%d", i);
        sleep(1);
    }

    
}


- (void)clickPThread{
    
    NSLog(@"我在主线程中执行...");
    pthread_t pthread;
    pthread_create(&pthread, NULL, run , NULL);
    
}

void *run(void *data){
    NSLog(@"在子线程中执行....");
    
    for (int i = 1; i < 10; i++) {
        NSLog(@"%d", i);
        sleep(1);
    }
    
    return NULL;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}





@end





























