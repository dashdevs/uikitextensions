//
//  CALayer+DDImage.h
//  UIKitExtensions
//
//  Copyright © 2018 dashdevs.com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CALayer (DDExtensions)

/**
 Creates UIImage from current layer. May be nil

 @return image
 */
- (nullable UIImage *)dd_image;


@end

NS_ASSUME_NONNULL_END
