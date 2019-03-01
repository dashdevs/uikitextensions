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
        [self openURL: URL];
    }
}

- (void)dd_mailto:(NSString *)email {
    NSURLComponents *components = [[NSURLComponents alloc] init];
    components.host = @"co";
    components.queryItems = @[ [NSURLQueryItem queryItemWithName:@"to" value:email] ];
    
    components.scheme = @"inbox-gmail";
    if ([self openURL:components.URL]) {
        return;
    }
    components.scheme = @"googlegmail";
    if ([self openURL:components.URL]) {
        return;
    }
    
    [self openURL:[NSURL URLWithString:[@"mailto:" stringByAppendingString:email]]];
}

@end
