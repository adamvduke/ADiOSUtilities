/*  ADAlertView.m
 *
 *  Created by Adam Duke on 1/4/12.
 *  Copyright (c) 2012 Adam Duke. All rights reserved.
 *
 */

#import "ADAlertView.h"

@implementation ADAlertView

@synthesize completionBlock;

+ (id)alertView
{
    ADAlertView *sheet = [ADAlertView new];
    sheet.delegate = sheet;
    return sheet;
}

- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    completionBlock(buttonIndex);
    self.completionBlock = nil;
}

@end
