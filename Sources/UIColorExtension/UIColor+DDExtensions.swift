//
//  UIColor+DDExtensions.swift
//  
//
//  Created by Anatolij Klimenko on 30.11.2021.
//

import UIKit

extension UIColor {
    
    public func pointImage() -> UIImage? {
        let pointSize = CGSize(width: 1.0, height: 1.0)
        let rect = CGRect(origin: .zero, size: pointSize)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        context?.setFillColor(self.cgColor)
        context?.fill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
}
