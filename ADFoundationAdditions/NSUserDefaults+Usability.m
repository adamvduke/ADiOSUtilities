/*  ARUserDefaultsHelper.m
 *
 *  Created by Adam Duke on 8/12/11.
 *  Copyright 2011 Adam Duke. All rights reserved.
 *
 */

#import "NSUserDefaults+Usability.h"

@implementation NSUserDefaults (Usability)

/* convenience method to save a given string for a given key */
+ (void)saveObject:(id)object forKey:(NSString *)key
{
    NSUserDefaults *defaults = [self standardUserDefaults];
    [defaults setObject:object forKey:key];
    [defaults synchronize];
}

/* convenience method to return a string for a given key */
+ (id)retrieveObjectForKey:(NSString *)key
{
    return [[self standardUserDefaults] objectForKey:key];
}

/* convenience method to delete a value for a given key */
+ (void)deleteObjectForKey:(NSString *)key
{
    NSUserDefaults *defaults = [self standardUserDefaults];
    [defaults removeObjectForKey:key];
    [defaults synchronize];
}

@end
