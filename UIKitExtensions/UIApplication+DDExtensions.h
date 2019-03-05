//
//  UIApplication+DDExtensions.h
//  UIKitExtensions
//
//  Copyright © 2019 dashdevs.com. All rights reserved.
//

NS_ASSUME_NONNULL_BEGIN

@interface UIApplication (DDExtensions)

/**
 Method first checks if passed URL is universal link, and if so, open it in the respective native app instead. If not - failure handler is called

 @param URL A URL (Universal Resource Locator) to open
 @param failure Block that gets called if application failed to open link as universal
 */
- (void)dd_openUniversalLinkURL:(nonnull NSURL *)URL failureHandler:(nonnull void (^)(NSURL *URL))failure;

@end

NS_ASSUME_NONNULL_END
