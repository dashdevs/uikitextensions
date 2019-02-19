//
//  UIImage+DDTransformation.h
//  UIKitExtensions
//
//  Copyright © 2018 dashdevs.com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (DDTransformation)

/**
 Creates new resized image from current image

 @param size Size for image to
 @return Resized image
 */
- (UIImage *)dd_resize:(CGSize)size;
@end

NS_ASSUME_NONNULL_END
