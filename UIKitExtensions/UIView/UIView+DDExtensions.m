//
//  UIView+DDNibLoading.m
//  UIKitExtensions
//

#import "UIView+DDExtensions.h"

@implementation UIView (DDExtensions)

+ (instancetype)dd_viewWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    NSBundle *bundle = (nibBundleOrNil) ?: [NSBundle mainBundle];
    NSString *name = (nibNameOrNil) ?: NSStringFromClass(self);
    UIView *view = [[bundle loadNibNamed:name owner:self options:nil] firstObject];
    return view;
}

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
