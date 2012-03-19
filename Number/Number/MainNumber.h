//
//  MainNumber.h
//  Number
//
//  Created by Xuan Quang Nguyen on 3/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Number.h"

@interface MainNumber : UIViewController<UITableViewDataSource, UITableViewDelegate>
{
    NSMutableArray *num;
}

@property(nonatomic, retain) NSMutableArray *num;
@end
