/*  NSDictionary+NoNulls.m
 *
 *  Created by Adam Duke on 1/11/12.
 *  Copyright (c) 2012 Adam Duke. All rights reserved.
 *
 */

#import "NSDictionary+NoNulls.h"

@implementation NSDictionary (NoNulls)

- (id)smartObjectForKey:(id)aKey
{
    id property = [self objectForKey:aKey];
    if([property isKindOfClass:[NSNull class]])
    {
        return nil;
    }
    return property;
}

@end
