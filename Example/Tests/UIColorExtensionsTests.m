//
//  UIColorExtensionsTests.m
//  UIKitExtensionTests
//
//  Copyright © 2018 dashdevs.com. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "UIColor+DDExtensions.h"

@interface UIColorExtensionsTests : XCTestCase

@end

@implementation UIColorExtensionsTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testPointImage {
    UIImage *image = [[UIColor redColor] dd_pointImage];
    XCTAssertNotNil(image);
    XCTAssertEqual(CGSizeEqualToSize(image.size, CGSizeMake(1, 1)), YES);
    XCTAssertEqualObjects([UIColor redColor], [self pointImageColor:image]);
    
    image = [[UIColor greenColor] dd_pointImage];
    XCTAssertNotNil(image);
    XCTAssertEqual(CGSizeEqualToSize(image.size, CGSizeMake(1, 1)), YES);
    XCTAssertEqualObjects([UIColor greenColor], [self pointImageColor:image]);
    
    image = [[UIColor clearColor] dd_pointImage];
    XCTAssertNotNil(image);
    XCTAssertEqual(CGSizeEqualToSize(image.size, CGSizeMake(1, 1)), YES);
    XCTAssertEqual(CGColorGetAlpha([self pointImageColor:image].CGColor), 0);
}

- (UIColor *)pointImageColor:(UIImage *)image {
    unsigned char pixelColor[4];
    pixelColor[0] = '\0';
    pixelColor[1] = '\0';
    pixelColor[2] = '\0';
    pixelColor[3] = '\0';
    CGColorSpaceRef rgbColorSpace = CGColorSpaceCreateDeviceRGB();
    CGContextRef context = CGBitmapContextCreate(pixelColor, 1, 1, 8, 4, rgbColorSpace, kCGImageAlphaPremultipliedLast);
    CGContextDrawImage(context, CGRectMake(0, 0, 1, 1), image.CGImage);
    CGContextRelease(context);
    CGColorSpaceRelease(rgbColorSpace);
    UIColor *color = [UIColor colorWithRed:pixelColor[0]/255.0 green:pixelColor[1]/255.0 blue:pixelColor[2]/255.0 alpha:pixelColor[3]/255.0];
    return color;
}

@end
