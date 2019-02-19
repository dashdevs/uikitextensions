//
//  CALayer+DDImage.m
//  UIKitExtensions
//
//  Copyright © 2018 dashdevs.com. All rights reserved.
//

#import "CALayer+DDImage.h"

@implementation CALayer (DDImage)

- (nullable UIImage *)dd_image {
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, self.isOpaque, 0.0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    if (context == NULL) {
        return nil;
    }
    [self renderInContext:context];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

@end
