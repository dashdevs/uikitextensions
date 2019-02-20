//
//  UIColor+DDRepresentation.m
//  UIKitExtensions
//
//  Copyright © 2018 dashdevs.com. All rights reserved.
//

#import "UIColor+DDExtensions.h"

@implementation UIColor (DDExtensions)

- (nullable UIImage *)dd_pointImage {
    CGSize pointSize = CGSizeMake(1.0f, 1.0f);
    CGRect rect = { .origin = CGPointZero, .size = pointSize };
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [self CGColor]);
    CGContextFillRect(context, rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

@end
