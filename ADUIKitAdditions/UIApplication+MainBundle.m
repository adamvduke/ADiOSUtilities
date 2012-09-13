/*  UIApplication+MainBundle.h
 *
 *  Created by Adam Duke on 10/14/11.
 *  Copyright 2010 Adam Duke. All rights reserved.
 *
 */

#import "UIApplication+MainBundle.h"

@implementation UIApplication (MainBundle)

- (NSString *)bundleValueForKey:(NSString *)key
{
    NSDictionary *info = [[NSBundle mainBundle] infoDictionary];
    return [info objectForKey:key];
}

- (NSString *)applicationVersion
{
    return [self bundleValueForKey:@"CFBundleShortVersionString"];
}

- (NSString *)applicationName
{
    return [self bundleValueForKey:@"CFBundleDisplayName"];
}

@end
