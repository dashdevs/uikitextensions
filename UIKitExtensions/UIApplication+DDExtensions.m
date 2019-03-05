//
//  UIApplication+DDExtensions.m
//  UIKitExtensions
//
//  Copyright © 2019 dashdevs.com. All rights reserved.
//

#import "UIApplication+DDExtensions.h"

@implementation UIApplication (DDExtensions)

- (void)dd_openUniversalLinkURL:(NSURL *)URL failureHandler:(void (^)(NSURL * _Nonnull))failure {
    if (@available(iOS 10.0, *)) {
        [self openURL:URL options:@{ UIApplicationOpenURLOptionUniversalLinksOnly : @YES } completionHandler:^(BOOL success) {
            if (success) {
                return;
            }
            failure(URL);
        }];
    } else {
        if ([self canOpenURL:URL]) {
            [self openURL: URL];
        } else {
            failure(URL);
        }
    }
}

@end
