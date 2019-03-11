//
//  CGSize.swift
//  UIKitExtensions
//
//  Copyright © 2018 dashdevs.com. All rights reserved.
//

import Foundation

extension CGSize {
    /// Proportional relationship between width and height
    var aspectRatio: CGFloat {
        return width / height
    }
    
    /// Recalculates the corresponding width for newHeight based on aspect ratio.
    ///
    /// - Parameters:
    ///   - ratio: Aspect ratio, current value is used by default.
    ///   - newHeight: New height value.
    /// - Returns: Recalculated size.
    func updateWithAspectRatio(_ ratio: CGFloat? = nil, newHeight: CGFloat) -> CGSize {
        let aspectRatio = ratio ?? self.aspectRatio
        let newWidth = newHeight * aspectRatio
        return CGSize(width: newWidth, height: newHeight)
    }
    
    /// Recalculates the corresponding height for newWidth based on aspect ratio.
    ///
    /// - Parameters:
    ///   - ratio: Aspect ratio, current value is used by default.
    ///   - newWidth: New width value.
    /// - Returns: Recalculated size.
    func updateWithAspectRatio(_ ratio: CGFloat? = nil, newWidth: CGFloat) -> CGSize {
        let aspectRatio = ratio ?? self.aspectRatio
        let newHeight = newWidth / aspectRatio
        return CGSize(width: newWidth, height: newHeight)
    }
}
