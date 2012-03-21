//
//  SaveArrayCustomObject.m
//  Fashnet
//
//  Created by Quang Nguyen on 4/29/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SaveArrayCustomObject.h"


@implementation SaveArrayCustomObject

+(void)save:(NSMutableArray*)array key:(NSString*)key
{
    NSUserDefaults* defaults = [NSUserDefaults standardUserDefaults];
    NSData* data;
    data = [NSKeyedArchiver archivedDataWithRootObject:array];
    [defaults setObject:data forKey:key];
    [defaults synchronize];
}

+(NSArray*)load:(NSString*)key
{
    NSUserDefaults* defaults = [NSUserDefaults standardUserDefaults];
    NSData* cate = [defaults objectForKey:key];    
    NSArray *array = [[NSKeyedUnarchiver unarchiveObjectWithData:cate] retain];
    return [array autorelease];
}

+(void)saveObject:(id)object key:(NSString*)key
{
    NSUserDefaults* defaults = [NSUserDefaults standardUserDefaults];
    NSData* data;
    data = [NSKeyedArchiver archivedDataWithRootObject:object];
    [defaults setObject:data forKey:key];
    [defaults synchronize];
}

+(id)loadObject:(NSString*)key
{
    NSUserDefaults* defaults = [NSUserDefaults standardUserDefaults];
    NSData* cate = [defaults objectForKey:key];    
    id object = [[NSKeyedUnarchiver unarchiveObjectWithData:cate] retain];
    return [object autorelease];
}

@end
