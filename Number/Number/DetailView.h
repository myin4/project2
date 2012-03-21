//
//  DetailView.h
//  Number
//
//  Created by Xuan Quang Nguyen on 3/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Number.h"

@interface DetailView :  UIViewController<UITableViewDataSource, UITableViewDelegate>
{
    NSMutableArray *num;
}

@property(nonatomic, retain) NSMutableArray *num;

- (id)initWithString:(NSString*)str;

@end
