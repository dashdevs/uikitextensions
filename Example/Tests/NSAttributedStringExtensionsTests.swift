//
//  NSAttributedStringExtensionsTests.swift
//  UIKitExtensions_Tests
//
//  Created by Igor Kulik on 4/3/19.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import XCTest
@testable import UIKitExtensions

class NSAttributedStringExtensionsTests: XCTestCase {

    private var testAccuracy: CGFloat = 0.05
    
    private var testAttribures: StringAttributes {
        return [.foregroundColor: UIColor.black]
    }
    
    func testNativeStringAttributes() {
        let fontSize: CGFloat = 15.0
        let font = UIFont.systemFont(ofSize: fontSize)
        let lineSpacing: CGFloat = 4.0
        let color = UIColor.black
        
        let attributes = StringAttributes.stringAttributes(font: font, lineSpacing: lineSpacing, color: color)
        
        guard let attrsFont = attributes[.font] as? UIFont else {
            XCTFail(".font attribute is nil")
            return
        }
        XCTAssertEqual(attrsFont, font)
        
        guard let attrParagraphStyle = attributes[.paragraphStyle] as? NSParagraphStyle else {
            XCTFail(".paragraphStyle attribute is nil")
            return
        }
        XCTAssertEqual(attrParagraphStyle.lineSpacing, lineSpacing, accuracy: testAccuracy)

        
        guard let attrColor = attributes[.foregroundColor] as? UIColor else {
            XCTFail(".foregroundColor attribute is nil")
            return
        }
        XCTAssertEqual(attrColor, color)
    }
    
    func testCssStringAttributes() {
        let fontSize: CGFloat = 15.0
        let font = UIFont.systemFont(ofSize: fontSize)
        let cssLineHeight: CGFloat = 20.0
        let color = UIColor.black
        
        let attributes = StringAttributes.cssStringAttributes(font: font, size: fontSize, cssLineHeight: cssLineHeight, color: color)
        
        guard let attrsFont = attributes[.font] as? UIFont else {
            XCTFail(".font attribute is nil")
            return
        }
        XCTAssertEqual(attrsFont, font)
        
        let lineSpacing = cssLineHeight - fontSize - (font.lineHeight - font.pointSize)
        guard let attrParagraphStyle = attributes[.paragraphStyle] as? NSParagraphStyle else {
            XCTFail(".paragraphStyle attribute is nil")
            return
        }
        XCTAssertEqual(attrParagraphStyle.lineSpacing, lineSpacing, accuracy: testAccuracy)
        
        guard let attrColor = attributes[.foregroundColor] as? UIColor else {
            XCTFail(".foregroundColor attribute is nil")
            return
        }
        XCTAssertEqual(attrColor, color)
    }
}
