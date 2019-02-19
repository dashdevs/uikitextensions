//
//  UINavigationController+DDNavigation.m
//  UIKitExtensions
//
//  Copyright © 2018 dashdevs.com. All rights reserved.
//

#import "UINavigationController+DDNavigation.h"

@implementation UINavigationController (DDNavigation)

- (UIViewController *)dd_rootViewController {
    return self.viewControllers.firstObject;
}

- (void)dd_setTopViewController:(UIViewController *)controller animated:(BOOL)animated {
    NSMutableArray *viewControllers = [self.viewControllers mutableCopy];
    [viewControllers removeLastObject];
    [viewControllers addObject:controller];
    [self setViewControllers:viewControllers animated:animated];
}

- (void)dd_pushViewController:(UIViewController *)viewController fromViewController:(UIViewController *)fromViewController animated:(BOOL)animated {
    NSMutableArray *viewControllers = [self.viewControllers mutableCopy];
    NSUInteger numberOfControllers = viewControllers.count;
    NSUInteger currentIndex = [viewControllers indexOfObject:fromViewController];
    
    if (currentIndex != NSNotFound && currentIndex < numberOfControllers) {
        NSUInteger nextIndex = currentIndex + 1;
        NSRange range = NSMakeRange(nextIndex, numberOfControllers - nextIndex);
        [viewControllers removeObjectsInRange:range];
    }
    
    [viewControllers addObject:viewController];
    [self setViewControllers:viewControllers animated:animated];
}

@end
