//
//  NSAttributedString+DDExtensions.swift
//  UIKitExtensions
//
//  Copyright © 2019 dashdevs.com. All rights reserved.
//

import Foundation

typealias StringAttributes = [NSAttributedStringKey: Any]

extension Dictionary where Key == NSAttributedStringKey, Value == Any {
    
    /// Constructs a native string attributes dictionary from CSS text parameters.
    ///
    /// - Parameters:
    ///   - font: Text font.
    ///   - fontSize: Font size.
    ///   - cssLineHeight: 'line-height' CSS parameter.
    ///   - color: Text color.
    /// - Returns: Attributes for NSAttributedString.
    static func cssStringAttributes(font: UIFont, size fontSize: CGFloat, cssLineHeight: CGFloat? = nil, color: UIColor? = nil) -> StringAttributes {
        guard let lineHeight = cssLineHeight else {
                return stringAttributes(font: font, size: fontSize, lineSpacing: nil, color: color)
        }
        let lineSpacing = lineHeight - fontSize - (font.lineHeight - font.pointSize)
        return stringAttributes(font: font, size: fontSize, lineSpacing: lineSpacing, color: color)
    }
    
    /// Constructs a native string attributes dictionary.
    ///
    /// - Parameters:
    ///   - font: Text font.
    ///   - fontSize: Font size.
    ///   - lineSpacing: Paragraph line spacing.
    ///   - color: Text color.
    /// - Returns: Attributes for NSAttributedString.
    static func stringAttributes(font: UIFont, size fontSize: CGFloat, lineSpacing: CGFloat? = nil, color: UIColor? = nil) -> StringAttributes {
        var attributes: StringAttributes = [.font: font]
        if let lineSpacing = lineSpacing {
            let paragraphStyle: NSMutableParagraphStyle = NSParagraphStyle.default.mutableCopy() as! NSMutableParagraphStyle
            paragraphStyle.lineSpacing = lineSpacing
            attributes[.paragraphStyle] = paragraphStyle
        }
        
        if let color = color {
            attributes[.foregroundColor] = color
        }
        return attributes
    }
}
