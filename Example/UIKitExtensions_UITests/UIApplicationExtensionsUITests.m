//
//  UIKitExtensions_UITests.m
//  UIKitExtensions_UITests
//
//  Copyright © 2019 dashdevs.com. All rights reserved.
//

#import <XCTest/XCTest.h>

/**
 This class is intended to test behavior of UIApplication extensions since unit-tests are not self explanatory for this case. Tests assume that Twitter app is installed
 */
@interface UIApplicationExtensionsUITests : XCTestCase

@end

@implementation UIApplicationExtensionsUITests

- (void)setUp {
    self.continueAfterFailure = YES;
    [[[XCUIApplication alloc] init] launch];
}

- (void)testSafari {
    XCUIApplication *app = [[XCUIApplication alloc] init];
    XCTAssertTrue(app.webViews.count == 0);
    [app.buttons[@"Open safari link"] tap];
    
    XCUIElement *element = app.webViews.firstMatch;
    XCTAssertNotNil(element);
    XCTAssertTrue(app.webViews.count > 0);
}

- (void)testTwitter {
    XCUIApplication *app = [[XCUIApplication alloc] init];
    XCUIApplication *twitterApp = [[XCUIApplication alloc] initWithBundleIdentifier:@"com.atebits.Tweetie2"];
    [app.buttons[@"Open twitter link"] tap];

    XCTAssertTrue([twitterApp waitForState:XCUIApplicationStateRunningForeground timeout:5]);
}

@end
