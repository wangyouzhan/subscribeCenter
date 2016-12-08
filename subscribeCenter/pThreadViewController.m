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
#import "TestSingle.h"
#import "CustomNSOperation.h"

@interface pThreadViewController ()

@property(nonatomic, strong) NSOperationQueue *operQueue;


@end

@implementation pThreadViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 110, 100, 30);
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
    
    TicketManager *ticketManger = [[TicketManager alloc] init];
    [btn3 addTarget:ticketManger action:@selector(startSale) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn3];
    
    //GCD
    UIButton *btn4 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn4.frame = CGRectMake(100, 230, 100, 30);
    btn4.backgroundColor = [UIColor greenColor];
    [btn4 setTitle:@"GCD" forState:UIControlStateNormal];
    [btn4 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn4 addTarget:self action:@selector(gcdTest ) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn4];
    
    
    //GCD group
    UIButton *btn5 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn5.frame = CGRectMake(100, 270, 100, 30);
    btn5.backgroundColor = [UIColor greenColor];
    [btn5 setTitle:@"GCD group" forState:UIControlStateNormal];
    [btn5 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn5 addTarget:self action:@selector(gcdTestGroup ) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn5];
    
    //单例
    UIButton *btn6 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn6.frame = CGRectMake(100, 310, 100, 30);
    btn6.backgroundColor = [UIColor greenColor];
    [btn6 setTitle:@"GCD 单例" forState:UIControlStateNormal];
    [btn6 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn6 addTarget:self action:@selector(startSingle ) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn6];
    
    
    
    UIButton *btn7 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn7.frame = CGRectMake(100, 350, 100, 30);
    btn7.backgroundColor = [UIColor greenColor];
    [btn7 setTitle:@"nsoperation" forState:UIControlStateNormal];
    [btn7 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn7 addTarget:self action:@selector(operationClick ) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn7];

}

#pragma mark - operationTest
-(void)operationClick{
    
    NSLog(@"main thread");
//    NSInvocationOperation *invocationOper = [[NSInvocationOperation alloc] initWithTarget:self selector:@selector(invocationAction ) object:nil];
//    [invocationOper start];
    
//    NSBlockOperation *blockOper = [NSBlockOperation blockOperationWithBlock:^{
//        NSLog(@"asy thread ....");
//    }];
//    [blockOper start];

    
    if (!self.operQueue) {
        self.operQueue = [[NSOperationQueue alloc] init];
    }
    [self.operQueue setMaxConcurrentOperationCount:2];
    
    CustomNSOperation *customeOperA = [[CustomNSOperation alloc] initWithName:@"OperA"];
    CustomNSOperation *customeOperB = [[CustomNSOperation alloc] initWithName:@"OperB"];
    CustomNSOperation *customeOperC = [[CustomNSOperation alloc] initWithName:@"OperC"];
    CustomNSOperation *customeOperD = [[CustomNSOperation alloc] initWithName:@"OperD"];
    
    //线程依赖
    [customeOperD addDependency:customeOperA];
    [customeOperA addDependency:customeOperC];
    [customeOperC addDependency:customeOperB];
    
    [self.operQueue addOperation:customeOperA];
    [self.operQueue addOperation:customeOperB];
    [self.operQueue addOperation:customeOperC];
    [self.operQueue addOperation:customeOperD];

    
}


- (void)invocationAction{
    NSLog(@"invocationoperation。。。");
}


- (void)startSingle{
    
    [TestSingle instance];
    
}

#pragma mark - gcd Test

- (void)gcdTestGroup{
    
    dispatch_queue_t queue = dispatch_queue_create("com.test.gcd.group", DISPATCH_QUEUE_CONCURRENT);
    
    dispatch_group_t group = dispatch_group_create();
    dispatch_group_async(group, queue, ^{
        NSLog(@"start task 1");
        [NSThread sleepForTimeInterval:2];
        NSLog(@"end task 1");
        
    });
    dispatch_group_async(group, queue, ^{
        NSLog(@"start task 2");
        [NSThread sleepForTimeInterval:2];
        NSLog(@"end task 2");
        
    });
    dispatch_group_async(group, queue, ^{
        NSLog(@"start task 3");
        [NSThread sleepForTimeInterval:2];
        NSLog(@"end task 3");
        
    });
    
    dispatch_group_notify(group, queue, ^{
        dispatch_async(dispatch_get_main_queue() , ^{
            NSLog(@"main.....");
                       });
        NSLog(@"over.....");
    });
    
    
}




#pragma mark - GCD Test
- (void)gcdTest{

    dispatch_async(dispatch_get_global_queue(0, 0), ^{
       
        NSLog(@"start task 1");
        [NSThread sleepForTimeInterval:3];
        dispatch_async(dispatch_get_main_queue(), ^{
            NSLog(@"主线程....");
            
        });
    });
    
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





























