//
//  Number.m
//  Number
//
//  Created by Quang Peter on 3/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Number.h"

@implementation Number

@synthesize num;
@synthesize status;
@synthesize startNotApearDay;

-(void)dealloc
{
    [super dealloc];
    self.startNotApearDay = nil;
}

-(id)initWithNumber:(int)_num andStatus:(int)_status andStartNotAppearDay:(NSString*)day
{
    if(self = [super init])
    {
        self.num = _num;
        self.status = _status;
        self.startNotApearDay = day;
    }
    
    return self;
}

- (void)encodeWithCoder:(NSCoder *)encoder 
{
    [encoder encodeInt:self.num forKey: @"num"];
    [encoder encodeInt:self.status forKey: @"status"];
    [encoder encodeObject:self.startNotApearDay forKey: @"startNotApearDay"];
}

- (id)initWithCoder:(NSCoder *)decoder
{
    self = [super init];
    if( self != nil )
    {
        self.num = [decoder decodeIntForKey:@"num"];
        self.status = [decoder decodeIntForKey:@"status"];
        self.startNotApearDay = [decoder decodeObjectForKey: @"startNotApearDay"];
    }
    return self;
}

-(NSString*)description
{
    return  [NSString stringWithFormat:@"num: %d, status: %d, day: %@", num, status, startNotApearDay];
}

@end
