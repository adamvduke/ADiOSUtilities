/*  ADDeviceHelper.m
 *
 *  Created by Aaron Kuehler on 7/7/11.
 *  Copyright 2011 Aaron Kuehler. All rights reserved.
 *
 *  In order to use this class, your project must link against
 *  the AudioToolbox framework.
 */

#import "ADDeviceHelper.h"
#import <AudioToolbox/AudioServices.h>

static BOOL audioSessionInitialized = NO;

@implementation ARDeviceHelper

+ (void)doAudioSessionInitialization
{
    if(!audioSessionInitialized)
    {
        AudioSessionInitialize(NULL, NULL, NULL, NULL);
        audioSessionInitialized = YES;
    }
}

+ (void)setAudioSessionActive
{
    AudioSessionSetActiveWithFlags(TRUE, kAudioSessionSetActiveFlag_NotifyOthersOnDeactivation);
}

+ (void)setAudioSessionInactive
{
    AudioSessionSetActive(FALSE);
}

+ (BOOL)CFStringRefIsEmpty:(CFStringRef)string
{
    /* toll free bridge the cfstringref to an nsstring */
    NSString *nsString = (__bridge NSString *) string;
    NSUInteger length = [nsString length];
    return length == 0;
}

+ (BOOL)isInSilentMode
{
    [self doAudioSessionInitialization];
    [self setAudioSessionActive];
    CFStringRef state = nil;
    UInt32 propertySize = sizeof(CFStringRef);
    AudioSessionGetProperty(kAudioSessionProperty_AudioRoute, &propertySize, &state);
    BOOL isEmpty = [self CFStringRefIsEmpty:state];
    CFRelease(state);
    [self setAudioSessionInactive];
    return isEmpty;
}

@end
