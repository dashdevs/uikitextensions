//
//  UIView+DDNibLoading.m
//  UIKitExtensions
//

#import "UIView+DDNibLoading.h"

@implementation UIView (DDNibLoading)

+ (instancetype)dd_viewWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    NSBundle *bundle = (nibBundleOrNil) ?: [NSBundle mainBundle];
    NSString *name = (nibNameOrNil) ?: NSStringFromClass(self);
    UIView *view = [[bundle loadNibNamed:name owner:self options:nil] firstObject];
    return view;
}

@end
