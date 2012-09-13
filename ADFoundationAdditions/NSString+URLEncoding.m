/*  NSString+URLEncoding.m
 *
 *  Created by Adam Duke.
 *  Copyright 2011 Adam Duke. All rights reserved.
 *
 */

#import "NSString+URLEncoding.h"

@implementation NSString (URLEncoding)
- (NSString *)URLEncode
{
    CFStringRef encoded = CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault,
                                                                  (__bridge CFStringRef)self,
                                                                  NULL,
                                                                  CFSTR(":/?#[]@!$&'()*+,;="),
                                                                  kCFStringEncodingUTF8);
    return [NSString stringWithString:(__bridge_transfer NSString *)encoded];
}

- (NSString *)URLDecode
{
    CFStringRef decoded = CFURLCreateStringByReplacingPercentEscapes( kCFAllocatorDefault,
                                                                      (__bridge CFStringRef)self,
                                                                      CFSTR(":/?#[]@!$&'()*+,;=") );
    return [NSString stringWithString:(__bridge_transfer NSString *)decoded];
}

+ (NSString *)queryStringWithBase:(NSString *)base parameters:(NSDictionary *)params prefixed:(BOOL)prefixed
{
    /* Append base if specified. */
    NSMutableString *str = [NSMutableString stringWithCapacity:0];
    if(base)
    {
        [str appendString:base];
    }

    /* Append each name-value pair. */
    if(params)
    {
        int i;
        NSArray *names = [params allKeys];
        for(i = 0; i < [names count]; i++)
        {
            if(i == 0 && prefixed)
            {
                [str appendString:@"?"];
            }
            else if(i > 0)
            {
                [str appendString:@"&"];
            }
            NSString *name = [names objectAtIndex:i];
            if([[params objectForKey:name] isKindOfClass:[NSArray class]])
            {
                NSArray *array = [params objectForKey:name];
                [array enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop)
                 {
                     NSString *value = (NSString *)obj;
                     NSString *pair = [NSString stringWithFormat:@"%@[]=%@", name, value ];
                     [str appendString:pair];
                     if(obj != [array lastObject])
                     {
                         [str appendString:@"&"];
                     }
                 }];
            }
            else
            {
                NSString *value = [[params objectForKey:name] URLEncode];
                NSString *pair = [NSString stringWithFormat:@"%@=%@", name, value ];
                [str appendString:pair];
            }
        }
    }
    return [NSString stringWithString:str];
}

@end
