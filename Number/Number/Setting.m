//
//  Setting.m
//  Number
//
//  Created by Quang Peter on 3/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Setting.h"

@implementation Setting

- (id)init
{
    self = [super init];
    if (self) {
        // Custom initialization
        self.title = @"Setting";
        UITabBarItem *item = [[UITabBarItem alloc] initWithTitle:@"Setting" image: [UIImage imageNamed:@"icon/setting.png"] tag:3];
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
    self.view.backgroundColor = [UIColor grayColor];
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
