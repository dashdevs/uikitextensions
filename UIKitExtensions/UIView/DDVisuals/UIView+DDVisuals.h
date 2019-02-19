//
//  UIView+DDVisuals.h
//  UIKitExtensions
//
//  Copyright © 2018 dashdevs.com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (DDVisuals)

/**
 Returns less than or equal 1 point height view. Convenient for finding shadow views in controls like UINavigationBar

 @return View with less or equal 1 point height
 */
- (nullable UIImageView *)dd_hairlineImageView;

@end

NS_ASSUME_NONNULL_END
