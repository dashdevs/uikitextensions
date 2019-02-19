//
//  UIColor+DDRepresentation.h
//  UIKitExtensions
//
//  Copyright © 2018 dashdevs.com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (DDRepresentation)

/**
 Creates UIImage with 1*1 size from current color. Convenient for styling controls like UIButton

 @return Colored image
 */
- (nullable UIImage *)dd_pointImage;

@end

NS_ASSUME_NONNULL_END
