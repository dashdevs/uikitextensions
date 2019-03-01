//
//  UIKitExtensions_UITests.m
//  UIKitExtensions_UITests
//
//  Copyright © 2019 CocoaPods. All rights reserved.
//

#import <XCTest/XCTest.h>
//#import "UIApplication+DDExtensions.h"

@interface UIApplicationExtensionsUITests : XCTestCase

@end

@implementation UIApplicationExtensionsUITests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.

    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;

    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    [[[XCUIApplication alloc] init] launch];
}

- (void)testExample {
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app.buttons[@"Open safari link"] tap];
    
    XCUIElement *element = app.webViews.firstMatch;
    XCTAssertNotNil(element);
    
}

@end
