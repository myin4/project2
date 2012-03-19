//
//  MainSecondNumber.m
//  Number
//
//  Created by Xuan Quang Nguyen on 3/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MainSecondNumber.h"

@implementation MainSecondNumber

- (id)init
{
    self = [super init];
    if (self) {
        self.title = @"Main-Sub";
        UITabBarItem *item = [[UITabBarItem alloc] initWithTitle:@"Main-Sub" image: [UIImage imageNamed:@"icon/main.sub.png"] tag:2];
        self.tabBarItem = item;
        [item release];
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)loadView
{
    [super loadView];
    self.view.backgroundColor = [UIColor blueColor];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
