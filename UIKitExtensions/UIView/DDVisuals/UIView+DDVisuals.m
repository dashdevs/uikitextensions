//
//  UIView+DDVisuals.m
//  UIKitExtensions
//
//  Copyright © 2018 dashdevs.com. All rights reserved.
//

#import "UIView+DDVisuals.h"

@implementation UIView (DDVisuals)

- (UIImageView *)dd_hairlineImageView {
    if ([self isKindOfClass:[UIImageView class]]) {
        if (self.bounds.size.height <= 1.0) {
            return (UIImageView *)self;
        }
    }
    for (UIView *view in self.subviews) {
        UIImageView *hairlineImageView = [view dd_hairlineImageView];
        if (hairlineImageView) {
            return hairlineImageView;
        }
    }
    return nil;
}

@end
