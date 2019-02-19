//
//  UIView+DDNibLoading.h
//  UIKitExtensions
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (DDNibLoading)

/**
 Loads view from specified nib containing in specified bundle

 @param nibNameOrNil The name of the nib file to associate with the view. If nil name is set to UIView class name
 @param nibBundleOrNil The bundle in which to search for the nib file. If nil searches in main bundle
 @return A newly initialized UIView object
 */
+ (nonnull instancetype)dd_viewWithNibName:(nullable NSString *)nibNameOrNil bundle:(nullable NSBundle *)nibBundleOrNil;

@end

NS_ASSUME_NONNULL_END
