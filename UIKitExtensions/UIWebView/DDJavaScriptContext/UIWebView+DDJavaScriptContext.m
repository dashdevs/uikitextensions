//
//  UIWebView+DDJavaScriptContext.m
//  UIKitExtensions
//
//  Copyright © 2018 dashdevs.com. All rights reserved.
//

#import "UIWebView+DDJavaScriptContext.h"

static NSString *kJavaScriptContextKeyPath = @"documentView.webView.mainFrame.javaScriptContext";

@implementation UIWebView (DDJavaScriptContext)

- (void)dd_defineJSFunction:(NSString *)name block:(void (^)(void))block {
    [self valueForKeyPath:kJavaScriptContextKeyPath][name] = ^{
        dispatch_async(dispatch_get_main_queue(), block);
    };
}

@end
