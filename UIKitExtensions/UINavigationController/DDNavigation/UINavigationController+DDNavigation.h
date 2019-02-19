//
//  UINavigationController+DDNavigation.h
//  UIKitExtensions
//
//  Copyright © 2018 dashdevs.com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UINavigationController (DDNavigation)

/**
 Returns topmost view controller in navigation stack. May return nil if no view controller in stack
 */
@property (nullable, strong, nonatomic, readonly) UIViewController *dd_rootViewController;

/**
 Sets topmost view controller in navigation stack

 @param controller View controller to set as first in stack
 @param animated Specify YES if you want to animate the change
 */
- (void)dd_setTopViewController:(nonnull UIViewController *)controller animated:(BOOL)animated;

/**
 Allows to add view controller to arbitrary place in navigation stack

 @param viewController View controller to add to stack
 @param fromViewController View controller from 
 @param animated Specify YES if you want to animate the transition
 */
- (void)dd_pushViewController:(nonnull UIViewController *)viewController fromViewController:(nonnull UIViewController *)fromViewController animated:(BOOL)animated;

@end

NS_ASSUME_NONNULL_END
