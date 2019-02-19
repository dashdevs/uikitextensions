//
//  CALayerExtensionsTests.m
//  UIKitExtensionTests
//
//  Copyright © 2018 dashdevs.com. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "CALayer+DDImage.h"

@interface CALayerExtensionsTests : XCTestCase

@end

@implementation CALayerExtensionsTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testImageFromLayer {
    CAShapeLayer *layer = [CAShapeLayer layer];
    XCTAssertNil([layer dd_image]);
    
    layer.frame = CGRectMake(0, 0, 10, 10);
    XCTAssertNotNil([layer dd_image]);
    
    layer.fillColor = nil;
    layer.lineWidth = 2;
    layer.path = [UIBezierPath bezierPathWithRect:layer.bounds].CGPath;
    
    XCTAssertNotNil(layer);
}

@end
