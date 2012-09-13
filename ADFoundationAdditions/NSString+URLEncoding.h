/*  NSString+URLEncoding.h
 *
 *  Created by Adam Duke
 *  Copyright 2011 Adam Duke. All rights reserved.
 *
 */

#import <Foundation/Foundation.h>

@interface NSString (URLEncoding)

- (NSString *)URLEncode;

- (NSString *)URLDecode;

+ (NSString *)queryStringWithBase:(NSString *)base parameters:(NSDictionary *)params prefixed:(BOOL)prefixed;

@end
