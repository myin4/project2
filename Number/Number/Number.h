//
//  Number.h
//  Number
//
//  Created by Quang Peter on 3/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Number : NSObject<NSCoding>

{
    int num;
    int status;
    NSString *startNotApearDay;
}

@property(nonatomic, readwrite) int num;
@property(nonatomic, readwrite) int status;
@property(nonatomic, retain) NSString *startNotApearDay;
-(id)initWithNumber:(int)_num andStatus:(int)_status andStartNotAppearDay:(NSString*)day;

@end
