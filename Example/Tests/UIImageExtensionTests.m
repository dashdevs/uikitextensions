//
//  UIImageExtensionTests.m
//  UIKitExtensionTests
//
//  Copyright © 2018 dashdevs.com. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "UIImage+DDExtensions.h"

@interface UIImageExtensionTests : XCTestCase

@end

@implementation UIImageExtensionTests


- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (UIImage *)testImage {
    NSString *path = [[NSBundle bundleForClass:[self class]] pathForResource:@"imageWithRGB150.250.201" ofType:@"png"];
    NSData *data = [NSData dataWithContentsOfFile:path];
    return [UIImage imageWithData:data];
}

- (void)testdd_resize {
    CGSize testSize = CGSizeMake(150, 150);
    UIImage *newImage = [[self testImage] dd_resize:testSize];
    
    XCTAssertTrue(CGSizeEqualToSize(testSize, newImage.size));
}

@end
