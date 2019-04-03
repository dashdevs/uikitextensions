//
//  UIScreen+DDExtensions.swift
//  UIKitExtensions
//
//  Copyright © 2019 dashdevs.com. All rights reserved.
//

import UIKit

// MARK: - Adaptive layout: Provides relative dimensions and utilities for screen width & height
public extension UIScreen {
    
    // MARK: - Default screen dimensions, specified in design (iPhone 6)
    
    private static var designWidth: CGFloat {
        return 335.0
    }
    
    private static var designHeight: CGFloat {
        return 667.0
    }
    
    // MARK: - Properties
    
    /// i.e. actual screen width, divided by the width in design.
    var relativeWidthMultiplier: CGFloat {
        return bounds.width / UIScreen.designWidth
    }
    
    /// i.e. actual screen height, divided by the height in design.
    var relativeHeightMultiplier: CGFloat {
        return bounds.height / UIScreen.designHeight
    }
    
    // MARK: - Public methods
    
    /// Calculates relative dimension value for baseWidth.
    ///
    /// - Parameters:
    ///   - baseWidth: Basic width value.
    ///   - limitedToMax: Defines whether the result should be limited to baseDimension as a maximum value.
    /// - Returns: Relative width value.
    func getRelativeWidth(for baseWidth: CGFloat, limitedToMax: Bool = false) -> CGFloat {
        return getRelativeDimension(for: baseWidth, multiplier: relativeWidthMultiplier, limitedToMax: limitedToMax)
    }
    
    /// Calculates relative dimension value for baseHeight.
    ///
    /// - Parameters:
    ///   - baseHeight: Basic height value.
    ///   - limitedToMax: Defines whether the result should be limited to baseDimension as a maximum value.
    /// - Returns: Relative height value.
    func getRelativeHeight(for baseHeight: CGFloat, limitedToMax: Bool = false) -> CGFloat {
        return getRelativeDimension(for: baseHeight, multiplier: relativeHeightMultiplier, limitedToMax: limitedToMax)
    }
    
    /// Calculates relative dimension value for baseWidth.
    ///
    /// - Parameters:
    ///   - baseWidth: Basic width value.
    ///   - limitedToMin: Defines whether the result should be limited to baseDimension as a minimim value.
    /// - Returns: Relative width value.
    func getRelativeWidth(for baseWidth: CGFloat, limitedToMin: Bool = false) -> CGFloat {
        return getRelativeDimension(for: baseWidth, multiplier: relativeWidthMultiplier, limitedToMin: limitedToMin)
    }
    
    /// Calculates relative dimension value for baseHeight.
    ///
    /// - Parameters:
    ///   - baseHeight: Basic height value.
    ///   - limitedToMin: Defines whether the result should be limited to baseDimension as a minimum value.
    /// - Returns: Relative height value.
    func getRelativeHeight(for baseHeight: CGFloat, limitedToMin: Bool = false) -> CGFloat {
        return getRelativeDimension(for: baseHeight, multiplier: relativeHeightMultiplier, limitedToMin: limitedToMin)
    }
    
    // MARK: - Private methods
    
    /// Calculates relative value of screen dimension,
    /// from baseDimension and relative multiplier and
    /// also can apply limitation to baseDimension value.
    ///
    /// - Parameters:
    ///   - baseDimension: Basic value of screen dimension.
    ///   - multiplier: Relative multiplier.
    ///   - limitedToBase: Defines whether the result should be limited to baseDimension as a maximum value.
    /// - Returns: Relative value of screen dimension.
    private func getRelativeDimension(for baseDimension: CGFloat, multiplier: CGFloat, limitedToMax: Bool) -> CGFloat {
        let relativeDimension = baseDimension * multiplier
        return limitedToMax ? min(baseDimension, relativeDimension) : relativeDimension
    }
    
    /// Calculates relative value of screen dimension,
    /// from baseDimension and relative multiplier and
    /// also can apply limitation to baseDimension value.
    ///
    /// - Parameters:
    ///   - baseDimension: Basic value of screen dimension.
    ///   - multiplier: Relative multiplier.
    ///   - limitedToMin: Defines whether the result should be limited to baseDimension as a minimum value.
    /// - Returns: Relative value of screen dimension.
    private func getRelativeDimension(for baseDimension: CGFloat, multiplier: CGFloat, limitedToMin: Bool) -> CGFloat {
        let relativeDimension = baseDimension * multiplier
        return limitedToMin ? max(baseDimension, relativeDimension) : relativeDimension
    }
}
