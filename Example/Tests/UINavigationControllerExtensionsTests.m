//
//  UINavigationControllerExtensionsTests.m
//  UIKitExtensionTests
//
//  Copyright © 2018 dashdevs.com. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "UINavigationController+DDExtensions.h"

@interface UINavigationControllerExtensionsTests : XCTestCase

@property (nonatomic, strong) UINavigationController *navigationController;
@property (nonatomic, strong) UIViewController *rootViewController;

@end

@implementation UINavigationControllerExtensionsTests

- (void)setUp {
    [super setUp];
    
    self.rootViewController = [[UIViewController alloc] init];
    self.navigationController = [[UINavigationController alloc] initWithRootViewController:self.rootViewController];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testRootViewController {
    XCTAssertEqual([self.navigationController dd_rootViewController], self.rootViewController);
    UIViewController *viewController = [[UIViewController alloc] init];
    [self.navigationController addChildViewController:viewController];
    XCTAssertEqual([self.navigationController dd_rootViewController], self.rootViewController);
}

- (void)testSetTopViewController {
    UIViewController *viewController1 = [[UIViewController alloc] init];
    [self.navigationController dd_setTopViewController:viewController1 animated:NO];
    XCTAssertEqual(viewController1, self.navigationController.topViewController);
    
    UIViewController *viewController2 = [[UIViewController alloc] init];
    [self.navigationController dd_setTopViewController:viewController2 animated:NO];
    XCTAssertEqual(viewController2, self.navigationController.topViewController);
}

- (void)testPushViewController {
    UIViewController *topViewController = [[UIViewController alloc] init];
    [self.navigationController dd_setTopViewController:topViewController animated:NO];
    
    UIViewController *viewController1 = [[UIViewController alloc] init];
    [self.navigationController dd_pushViewController:viewController1 fromViewController:topViewController animated:NO];
    XCTAssertEqual(viewController1, self.navigationController.topViewController);
    XCTAssertEqual(self.navigationController.viewControllers.count, 2);
    
    UIViewController *viewController2 = [[UIViewController alloc] init];
    [self.navigationController dd_pushViewController:viewController2 fromViewController:viewController1 animated:NO];
    XCTAssertEqual(viewController2, self.navigationController.topViewController);
    XCTAssertEqual(self.navigationController.viewControllers.count, 3);
    
    [self.navigationController dd_pushViewController:viewController2 fromViewController:topViewController animated:NO];
    XCTAssertEqual(viewController2, self.navigationController.topViewController);
    XCTAssertEqual(self.navigationController.viewControllers.count, 2);
}

@end
