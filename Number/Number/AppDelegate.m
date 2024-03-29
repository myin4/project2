//
//  AppDelegate.m
//  Number
//
//  Created by Xuan Quang Nguyen on 3/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = _window;
@synthesize viewController = _viewController;

- (void)dealloc
{
    [_window release];
    [_viewController release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad) {
        self.viewController = [[[ViewControlleriPad alloc] init] autorelease];
    } else {
        
        self.viewController = [[[UITabBarController alloc] init] autorelease];
        
        //((UITabBarController*)self.viewController).tabBar.tintColor = [UIColor blueColor];
        
        MainNumber *mainNum = [[[MainNumber alloc] init] autorelease];
        UINavigationController *main = [[[UINavigationController alloc] initWithRootViewController:mainNum] autorelease];
        //main.navigationBar.tintColor = [UIColor greenColor];
        
        SecondNumber *secondNum = [[[SecondNumber alloc] init] autorelease];
        UINavigationController *second = [[[UINavigationController alloc] initWithRootViewController:secondNum] autorelease];
        //second.navigationBar.tintColor = [UIColor greenColor];
        
        MainSecondNumber *mainSecondNum = [[[MainSecondNumber alloc] init] autorelease];
        UINavigationController *mainSecond = [[[UINavigationController alloc] initWithRootViewController:mainSecondNum] autorelease];
        //mainSecond.navigationBar.tintColor = [UIColor greenColor];
        
        NorthNumber *northNum = [[[NorthNumber alloc] init] autorelease];
        UINavigationController *north = [[[UINavigationController alloc] initWithRootViewController:northNum] autorelease];
        //north.navigationBar.tintColor = [UIColor greenColor];
        
        Setting *settingNum = [[[Setting alloc] init] autorelease];
        UINavigationController *setting = [[[UINavigationController alloc] initWithRootViewController:settingNum] autorelease];
        //north.navigationBar.tintColor = [UIColor greenColor];
        
        [((UITabBarController*)self.viewController) setViewControllers: [NSArray arrayWithObjects:main, second, mainSecond, north, nil]];
    }
    
    //input data
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if(![defaults boolForKey: @"main"])
    {
        [defaults setBool:YES forKey: @"main"];
        //prepare main list
        NSMutableArray *array = [NSMutableArray array];
        for (int i = 0; i<100; i++) {
            
            Number *num = [[Number alloc] initWithNumber: i andStatus:0 andStartNotAppearDay:@"01/01/2012"];
            [array addObject: num];
            [num release];
            
        }
        
        [SaveArrayCustomObject save: array key: @"main.array"];
    }
    
    if(![defaults boolForKey: @"sub"])
    {
        [defaults setBool:YES forKey: @"sub"];
        //prepare main list
        NSMutableArray *array = [NSMutableArray array];
        for (int i = 0; i<100; i++) {
            
            Number *num = [[Number alloc] initWithNumber: i andStatus:0 andStartNotAppearDay:@"01/01/2012"];
            [array addObject: num];
            [num release];
            
        }
        
        [SaveArrayCustomObject save: array key: @"sub.array"];
    }

    
    if(![defaults boolForKey: @"main.sub"])
    {
        [defaults setBool:YES forKey: @"main.sub"];
        //prepare main list
        NSMutableArray *array = [NSMutableArray array];
        for (int i = 0; i<100; i++) {
            
            Number *num = [[Number alloc] initWithNumber: i andStatus:0 andStartNotAppearDay: [[NSDate date] string]];
            [array addObject: num];
            [num release];
            
        }
        
        [SaveArrayCustomObject save: array key: @"main.sub.array"];
    }
    
    
    if(![defaults boolForKey: @"north"])
    {
        [defaults setBool:YES forKey: @"north"];
        //prepare main list
        NSMutableArray *array = [NSMutableArray array];
        for (int i = 0; i<100; i++) {
            
            Number *num = [[Number alloc] initWithNumber: i andStatus:0 andStartNotAppearDay:@"01/01/2012"];
            [array addObject: num];
            [num release];
            
        }
        
        [SaveArrayCustomObject save: array key: @"north.array"];
    }
    
    
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

@end
