//
//  CALayer+DDExtensions.swift
//  UIKitExtensions
//
//  Copyright © 2019 dashdevs.com. All rights reserved.
//

import Foundation

/// Storage for Sketch-style shadow parameters.
public struct SketchShadow {
    let color: UIColor
    let alpha: Float
    let x: CGFloat
    let y: CGFloat
    let blur: CGFloat
    let spread: CGFloat
    
    init(color: UIColor = .black, alpha: Float = 0.5, x: CGFloat = 0.0, y: CGFloat = 2.0, blur: CGFloat = 4.0, spread: CGFloat = 0.0) {
        self.color = color
        self.alpha = alpha
        self.x = x
        self.y = y
        self.blur = blur
        self.spread = spread
    }
}

public extension CALayer {
    
    /// Applies a shadow, specified in Sketch style.
    ///
    /// - Parameter sketchShadow: Sketch-style shadow parameters.
    /// - Returns: Updated object.
    @discardableResult
    func sketchShadowStyle(_ sketchShadow: SketchShadow) -> Self {
        masksToBounds = false
        shadowColor = sketchShadow.color.cgColor
        shadowOpacity = sketchShadow.alpha
        shadowOffset = CGSize(width: sketchShadow.x, height: sketchShadow.y)
        shadowRadius = sketchShadow.blur / 2.0
        if sketchShadow.spread == 0 {
            shadowPath = nil
        } else {
            let dx = -sketchShadow.spread
            let rect = bounds.insetBy(dx: dx, dy: dx)
            shadowPath = UIBezierPath(rect: rect).cgPath
        }
        return self
    }
}
