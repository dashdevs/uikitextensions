//
//  UIScreenExtensionsTests.swift
//  UIKitExtensions_Tests
//
//  Created by Igor Kulik on 4/3/19.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import XCTest

class UIScreenExtensionsTests: XCTestCase {

    // MARK: - Default screen dimensions, specified in typical design (iPhone 6)
    
    private var defaultDesignWidth: CGFloat {
        return 335.0
    }
    
    private var defaultDesignHeight: CGFloat {
        return 667.0
    }
    
    // MARK: - Properties
    
    private var testAccuracy: CGFloat = 0.5

    func testRelativeMultipliers() {
        let testRelativeWidth = UIScreen.main.bounds.width / defaultDesignWidth
        XCTAssertEqual(testRelativeWidth, UIScreen.main.relativeWidthMultiplier, accuracy: testAccuracy)
        
        let testRelativeHeight = UIScreen.main.bounds.height / defaultDesignHeight
        XCTAssertEqual(testRelativeHeight, UIScreen.main.relativeHeightMultiplier, accuracy: testAccuracy)
    }
    
    func testRelativeWidth() {
        let baseWidth: CGFloat = 200.0
        let relativeLimitedToMax = UIScreen.main.getRelativeWidth(for: baseWidth, limitedToMax: true)
        
        XCTAssertLessThanOrEqual(relativeLimitedToMax, baseWidth)
        
        let relativeLimitedToMin = UIScreen.main.getRelativeWidth(for: baseWidth, limitedToMin: true)

        XCTAssertGreaterThanOrEqual(relativeLimitedToMin, baseWidth)
    }
    
    func testRelativeHeight() {
        let baseHeight: CGFloat = 100.0
        let relativeLimitedToMax = UIScreen.main.getRelativeHeight(for: baseHeight, limitedToMax: true)
        
        XCTAssertLessThanOrEqual(relativeLimitedToMax, baseHeight)
        
        let relativeLimitedToMin = UIScreen.main.getRelativeHeight(for: baseHeight, limitedToMin: true)
        
        XCTAssertGreaterThanOrEqual(relativeLimitedToMin, baseHeight)
    }
}
