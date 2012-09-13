/*  UIAlertView+ShowMessage.m
 *
 *  Created by Aaron Kuehler on 9/19/11.
 *  Copyright 2011 Aaron Kuehler. All rights reserved.
 *
 */

#import "UIAlertView+ShowMessage.h"

@implementation UIAlertView (ShowMessage)

+ (void)showAlertWithMessage:(NSString *)message
{
    /* TODO: Localize this, it might require a bundle */
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:nil
                                                        message:message
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
    [alertView show];
}

@end
