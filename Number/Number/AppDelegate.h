//
//  AppDelegate.h
//  Number
//
//  Created by Xuan Quang Nguyen on 3/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewControlleriPad.h"
#import "MainNumber.h"
#import "SecondNumber.h"
#import "MainSecondNumber.h"
#import "NorthNumber.h"
#import "Setting.h"

@class ViewControlleriPad;
@class ViewControlleriPhone;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) UIViewController *viewController;

@end
