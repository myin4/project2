//
//  MainNumber.h
//  Number
//
//  Created by Xuan Quang Nguyen on 3/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Number.h"
#import "DetailView.h"
#import "InputNumber.h"

@interface MainNumber : UIViewController<UITableViewDataSource, UITableViewDelegate>
{
    NSMutableArray *num;
    UITableView *table;
}

@property(nonatomic, retain) UITableView *table;
@property(nonatomic, retain) NSMutableArray *num;
@end
