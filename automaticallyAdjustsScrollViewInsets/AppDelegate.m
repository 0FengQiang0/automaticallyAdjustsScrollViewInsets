//
//  AppDelegate.m
//  automaticallyAdjustsScrollViewInsets
//
//  Created by 冯强 on 2017/10/12.
//  Copyright © 2017年 上海旻瑞信息技术有限公司. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    ViewController *vc = [ViewController new];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    /*********************以下代码注释掉再看看效果*******************/
    [nav.navigationBar setBackgroundImage:[UIImage imageNamed:@"topcolor"] forBarMetrics:UIBarMetricsDefault];
    /***********************************************************/
    
    /*********************以下代码注释掉再看看效果*******************/
//    nav.navigationBar.translucent = NO;
    if (FQTopHeight == 88)
    [nav.navigationBar setBackgroundImage:[UIImage imageNamed:@"topcolor-X"] forBarMetrics:UIBarMetricsDefault];
    /***********************************************************/

    self.window.rootViewController = nav;
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    
#warning  得出的重要结论 :所以呢，得出这么一个结论,1⃣️：设置navigationBar 的 translucent 为NO，这个操作将导致 navigationBar 变得不透明，2⃣️：默认状态下的automaticallyAdjustsScrollViewInsets或者contentInsetAdjustmentBehavior，这两个操作都将导致Controller里的tableView往下移 navigationBar + statusBar 个像素；3⃣️：或者给navigationBar加上背景图片，这个操作将会导致除iphoneX之外的设备Controller里的tableView往下移 navigationBar + statusBar 个像素。
    
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
