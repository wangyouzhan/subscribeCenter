//
//  AppDelegate.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/17.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "AppDelegate.h"
#import "UserInfoManagerCenter.h"
#import "ViewController.h"
#import "MasonryTestViewController.h"
#import "Case1ViewController.h"



@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    UserInfoManagerCenter *center = [UserInfoManagerCenter managerCenter];
    center.name = @"xiaoming";
    [center setName:@"wang"];
    
//    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
//    ViewController *viewController = [[ViewController alloc] init];
//    
//    [self.window setRootViewController:viewController];
//    [self.window makeKeyAndVisible];
    
    
    // use Masonry View controller
    //self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    //MasonryTestViewController *viewController = [[MasonryTestViewController alloc] init];
    
    //[self.window setRootViewController:viewController];
    //[self.window makeKeyAndVisible];
    
    
    
    
    //load Case1ViewController
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    Case1ViewController *case1ViewController = [[Case1ViewController alloc] init];
    [self.window setRootViewController:case1ViewController];
    [self.window makeKeyAndVisible];
    
    

    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    

}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    
    
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
