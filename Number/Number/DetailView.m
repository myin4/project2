//
//  DetailView.m
//  Number
//
//  Created by Xuan Quang Nguyen on 3/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DetailView.h"

@implementation DetailView

@synthesize num;

-(void)dealloc
{
    [super dealloc];
    self.num = nil;
}
#pragma mark- UITableView Delegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return  44;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
//    
//    DetailView *detail = [[DetailView alloc] initWithString: [tableView cellForRowAtIndexPath:indexPath].textLabel.text];
//    
//    [self.navigationController pushViewController:detail animated:YES];
//    [detail release];
    
}

#pragma mark-UITableView Datasoure

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.num count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *reuseID = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: reuseID];
    if(cell == nil)
    {
        cell = [[[UITableViewCell alloc] initWithStyle: UITableViewCellStyleDefault reuseIdentifier: reuseID] autorelease];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    Number *num = [self.num objectAtIndex: indexPath.row];
    cell.textLabel.text = num.num <=9 ? [NSString stringWithFormat: @"0%d", num.num] : [NSString stringWithFormat: @"%d", num.num];
    return  cell;
}



- (id)initWithString:(NSString*)str
{
    self = [super init];
    if (self) {
        self.title = [NSString stringWithFormat:@"Detail of number %@", str];
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

// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
    [super loadView];
    self.view.backgroundColor = [UIColor blueColor];
    self.num = [NSMutableArray arrayWithArray: [SaveArrayCustomObject load: @"main.array"]];
    NSLog(@"\nArray: %d\n", [self.num count]);
    
    UITableView *table = [[[UITableView alloc] initWithFrame: CGRectMake(0, 0, 320, 368)] autorelease];
    [self.view addSubview: table];
    table.delegate = self;
    table.dataSource = self;
    
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
