//
//  UIViewExtensionsTests.m
//  UIKitExtensionTests
//
//  Copyright © 2018 dashdevs.com. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "UIView+DDExtensions.h"

@interface UIViewExtensionsTests : XCTestCase

@end

@implementation UIViewExtensionsTests

- (void)testHairlineImageView {
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 100, 1)];
    XCTAssertEqual(imageView, [imageView dd_hairlineImageView]);
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    XCTAssertNil([view dd_hairlineImageView]);
    
    [view addSubview:imageView];
    XCTAssertEqual(imageView, [view dd_hairlineImageView]);
}

- (void)testViewLoading {
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    NSLog(@"%@", bundle);
    UIView *view = [UIView dd_viewWithNibName:@"TestNib" bundle:bundle];
    XCTAssertNotNil(view);
}

@end
