/*  ADAlertView.h
 *
 *  Created by Adam Duke on 1/4/12.
 *  Copyright (c) 2012 Adam Duke. All rights reserved.
 *
 */

#import <UIKit/UIKit.h>

@interface ADAlertView : UIAlertView <UIAlertViewDelegate>

+ (id)alertView;

@property (nonatomic, copy) void (^completionBlock)(NSUInteger index);

@end
