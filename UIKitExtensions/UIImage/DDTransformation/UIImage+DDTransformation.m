//
//  UIImage+DDTransformation.m
//  UIKitExtensions
//
//  Copyright © 2018 dashdevs.com. All rights reserved.
//

#import "UIImage+DDTransformation.h"

@implementation UIImage (DDTransformation)

- (UIImage *)dd_resize:(CGSize)size {
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0);
    [self drawInRect:CGRectMake(0, 0, size.width, size.height)];
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}

@end
