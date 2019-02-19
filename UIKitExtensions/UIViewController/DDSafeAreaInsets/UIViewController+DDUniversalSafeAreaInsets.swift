//
//  UIViewController+DDUniversalSafeAreaInsets.swift
//  UIKitExtensions
//
//  Copyright © 2019 dashdevs.com. All rights reserved.
//
import UIKit

extension UIViewController {
    
    /// Returns safe area insets, if not available, fallbacks to topLayoutGuide / bottomLayoutGuide API
    @objc public var universalSafeAreaInsets: UIEdgeInsets {
        if #available(iOS 11, *) {
            return view.safeAreaInsets
        } else {
            return UIEdgeInsets(top: topLayoutGuide.length,
                                left: 0.0,
                                bottom: bottomLayoutGuide.length,
                                right: 0.0)
        }
    }
}
