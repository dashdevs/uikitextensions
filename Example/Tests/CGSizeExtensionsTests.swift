//
//  CGSizeExtensionsTests.swift
//  UIKitExtensions_Tests
//
//  Copyright © 2018 dashdevs.com. All rights reserved.
//

import XCTest
import UIKitExtensions

class CGSizeExtensionsTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    private var testSize: CGSize {
        return CGSize(width: 200.0, height: 100.0)
    }
    
    private var testAccuracy: CGFloat = 0.5

    func testAspectRatio() {
        let size = testSize
        let testAspectRatio = size.aspectRatio
        let correctAspectRatio = size.width / size.height // From definition of aspect ratio
        XCTAssertEqual(testAspectRatio, correctAspectRatio, accuracy: testAccuracy)
    }

    func testHeightUpdateWithCurrentRatio() {
        let size = testSize
        let currentRatio = testSize.aspectRatio
        let updatedSize = size.updateWithAspectRatio(newHeight: 250.12)
        XCTAssertEqual(currentRatio, updatedSize.aspectRatio)
        XCTAssertEqual(updatedSize.width, updatedSize.height * currentRatio, accuracy: testAccuracy)
        XCTAssertEqual(updatedSize.height, updatedSize.width / currentRatio, accuracy: testAccuracy)
    }
    
    func testHeightUpdateWithCustomRatio() {
        let size = testSize
        let customRatio: CGFloat = 3.1234
        let updatedSize = size.updateWithAspectRatio(customRatio, newHeight: 152.022)
        XCTAssertEqual(customRatio, updatedSize.aspectRatio)
        XCTAssertEqual(updatedSize.width, updatedSize.height * customRatio, accuracy: testAccuracy)
        XCTAssertEqual(updatedSize.height, updatedSize.width / customRatio, accuracy: testAccuracy)
    }

    
    func testWidthUpdateWithCurrentRatio() {
        let size = testSize
        let currentRatio = testSize.aspectRatio
        let updatedSize = size.updateWithAspectRatio(newWidth: 258.01223)
        XCTAssertEqual(currentRatio, updatedSize.aspectRatio)
        XCTAssertEqual(updatedSize.width, updatedSize.height * currentRatio, accuracy: testAccuracy)
        XCTAssertEqual(updatedSize.height, updatedSize.width / currentRatio, accuracy: testAccuracy)
    }
    
    func testWidthUpdateWithCustomRatio() {
        let size = testSize
        let customRatio: CGFloat = 3.666
        let updatedSize = size.updateWithAspectRatio(customRatio, newWidth: 151.0012)
        XCTAssertEqual(customRatio, updatedSize.aspectRatio, accuracy:  testAccuracy)
        XCTAssertEqual(updatedSize.width, updatedSize.height * customRatio, accuracy: testAccuracy)
        XCTAssertEqual(updatedSize.height, updatedSize.width / customRatio, accuracy: testAccuracy)
    }
}
