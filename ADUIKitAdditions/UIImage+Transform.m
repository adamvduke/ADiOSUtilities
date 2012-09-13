/*  UIImage+Transform.m
 *
 *  Created by Aaron Kuehler on 7/22/11.
 *  Copyright 2011 Aaron Kuehler. All rights reserved.
 *
 */

#import "UIImage+Transform.h"

@implementation UIImage (Transform)

- (UIImage *)imageScaledToSize:(CGSize)size
{
    /* Create a bitmap graphics context
     * This will also set it as the current context
     */
    UIGraphicsBeginImageContext(size);

    /* Draw the scaled image in the current context */
    [self drawInRect:CGRectMake(0, 0, size.width, size.height)];

    /* Create a new image from current context */
    UIImage *scaledImage = UIGraphicsGetImageFromCurrentImageContext();

    /* Pop the current context from the stack */
    UIGraphicsEndImageContext();

    /* Return our new scaled image */
    return scaledImage;
}

@end
