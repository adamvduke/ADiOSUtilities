/*  ARUserDefaultsHelper.h
 *
 *  Created by Adam Duke on 8/12/11.
 *  Copyright 2011 Adam Duke. All rights reserved.
 *
 */

#import <Foundation/Foundation.h>

@interface NSUserDefaults (Usability)

/* convenience method to save a given object for a given key */
+ (void)saveObject:(id)object forKey:(NSString *)key;

/* convenience method to return an object for a given key */
+ (id)retrieveObjectForKey:(NSString *)key;

/* convenience method to delete a value for a given key */
+ (void)deleteObjectForKey:(NSString *)key;

@end
