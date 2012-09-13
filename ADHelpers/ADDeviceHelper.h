/*  ADDeviceHelper.h
 *
 *  Created by Aaron Kuehler on 7/7/11.
 *  Copyright 2011 Aaron Kuehler. All rights reserved.
 *
 *  In order to use this class, your project must link against
 *  the AudioToolbox framework.
 */

@interface ARDeviceHelper : NSObject {}

+ (BOOL)isInSilentMode;
@end
