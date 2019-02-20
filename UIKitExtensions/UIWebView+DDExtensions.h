//
//  UIWebView+DDJavaScriptContext.h
//  UIKitExtensions
//
//  Copyright © 2018 dashdevs.com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIWebView (DDExtensions)

/**
 Allows to inject block to as JavaScript function

 @param name Name of JS function to define
 @param block JS function body
 */
- (void)dd_defineJSFunction:(nonnull NSString *)name block:(nonnull void (^)(void))block;

@end

NS_ASSUME_NONNULL_END
