/*  NSDictionary+NoNulls.h
 *
 *  Created by Adam Duke on 1/11/12.
 *  Copyright (c) 2012 Adam Duke. All rights reserved.
 *
 */

#import <Foundation/Foundation.h>

@interface NSDictionary (NoNulls)

- (id)smartObjectForKey:(id)aKey;

@end
