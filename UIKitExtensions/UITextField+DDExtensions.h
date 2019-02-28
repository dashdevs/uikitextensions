//
//  UITextField+DDExtensions.h
//  UIKitExtensions
//
//  Copyright © 2019 dashdevs.com. All rights reserved.
//
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITextField (DDCursor)

/**
 Moves text field cursor to needed location

 @param location number of symbols to shift cursor
 */
- (void)dd_moveCursorToLocation:(NSInteger)location;

@end

NS_ASSUME_NONNULL_END
