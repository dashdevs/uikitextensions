//
//  CALayerExtensionTests.swift
//  UIKitExtensions_Tests
//
//  Created by Igor Kulik on 4/3/19.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import XCTest
@testable import UIKitExtensions

class CALayerExtensionTests: XCTestCase {

    private let testAccuracy: CGFloat = 0.05
    private var testView: UIView {
        return UIView(frame: CGRect(x: 0.0, y: 0.0, width: 375.0, height: 300.0))
    }
    
    private var testShadow: SketchShadow {
        return SketchShadow(color: .black, alpha: 0.5, x: 0.0, y: 2.0, blur: 4.0, spread: 0.0)
    }
    
    private var testSpreadShadow: SketchShadow {
        return SketchShadow(color: .black, alpha: 0.5, x: 0.0, y: 2.0, blur: 4.0, spread: 6.0)
    }

    
    func testShadowProperties() {
        let color: UIColor = .black
        let alpha: Float = 0.5
        let x: CGFloat = 0.0
        let y: CGFloat = 2.0
        let blur: CGFloat = 4.0
        let spread: CGFloat = 0.0
        
        let shadow = SketchShadow(color: color, alpha: alpha, x: x, y: y, blur: blur, spread: spread)
        
        XCTAssertEqual(shadow.color, color)
        XCTAssertEqual(shadow.alpha, alpha, accuracy: Float(testAccuracy))
        XCTAssertEqual(shadow.x, x, accuracy: testAccuracy)
        XCTAssertEqual(shadow.y, y, accuracy: testAccuracy)
        XCTAssertEqual(shadow.blur, blur, accuracy: testAccuracy)
        XCTAssertEqual(shadow.spread, spread, accuracy: testAccuracy)
    }
    
    func testShadowConversionToCALayer() {
        let layer = testView.layer
        let shadow = testShadow
        layer.sketchShadowStyle(shadow)
        
        XCTAssertEqual(layer.shadowColor, shadow.color.cgColor)
        XCTAssertEqual(layer.shadowOpacity, shadow.alpha)
        XCTAssertEqual(layer.shadowOffset.width, shadow.x, accuracy: testAccuracy)
        XCTAssertEqual(layer.shadowOffset.height, shadow.y, accuracy: testAccuracy)
        XCTAssertEqual(layer.shadowRadius, shadow.blur / 2.0, accuracy: testAccuracy)
        XCTAssertNil(layer.shadowPath)
    }
    
    func testSpreadShadowConversionToCALayer() {
        let layer = testView.layer
        let shadow = testSpreadShadow
        layer.sketchShadowStyle(shadow)
        
        XCTAssertEqual(layer.shadowColor, shadow.color.cgColor)
        XCTAssertEqual(layer.shadowOpacity, shadow.alpha)
        XCTAssertEqual(layer.shadowOffset.width, shadow.x, accuracy: testAccuracy)
        XCTAssertEqual(layer.shadowOffset.height, shadow.y, accuracy: testAccuracy)
        XCTAssertEqual(layer.shadowRadius, shadow.blur / 2.0, accuracy: testAccuracy)
        
        guard let shadowPath = layer.shadowPath else {
            XCTAssertNotNil(layer.shadowPath)
            return
        }
        
        let dx = -shadow.spread
        var rect = layer.bounds.insetBy(dx: dx, dy: dx)

        let isRect = shadowPath.isRect(&rect)
        XCTAssert(isRect)
    }
}
