//
//  UITextFieldExtensionsTests.m
//  UIKitExtensions_Tests
//
//  Copyright © 2019 dashdevs.com. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "UITextField+DDExtensions.h"
#import <UIKit/UIKit.h>

@interface UITextFieldExtensionsTests : XCTestCase
@property (nonatomic, strong) UITextField *textField;
@end

@implementation UITextFieldExtensionsTests

- (void)setUp {
    self.textField = [[UITextField alloc] initWithFrame:CGRectMake(0, 0, 150, 35)];
    self.textField.text = @"asdf adsf asdfas";
    [self.textField layoutIfNeeded];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testTextFieldMoveCursorWhenHaveText {
    NSInteger location = 5;
    
    [self.textField dd_moveCursorToLocation:location];
    
    UITextRange *selRange = self.textField.selectedTextRange;
    UITextPosition *selStartPos = selRange.start;
    NSInteger currentLocation = [self.textField offsetFromPosition:self.textField.beginningOfDocument toPosition:selStartPos];
    XCTAssertEqual(currentLocation, location);
}

- (void)testTextFieldMoveCursorBeyondText {
    NSInteger location = 100;
    [self.textField dd_moveCursorToLocation:location];

    UITextRange *selRange = self.textField.selectedTextRange;
    UITextPosition *selStartPos = selRange.start;
    NSInteger currentLocation = [self.textField offsetFromPosition:self.textField.beginningOfDocument toPosition:selStartPos];
    XCTAssertEqual(currentLocation, 0);
}

- (void)testTextFieldMoveCursorIncorrectPosition {
    NSInteger location = -1;
    [self.textField dd_moveCursorToLocation:location];
    
    UITextRange *selRange = self.textField.selectedTextRange;
    UITextPosition *selStartPos = selRange.start;
    NSInteger currentLocation = [self.textField offsetFromPosition:self.textField.beginningOfDocument toPosition:selStartPos];
    XCTAssertEqual(currentLocation, 0);
}

@end
